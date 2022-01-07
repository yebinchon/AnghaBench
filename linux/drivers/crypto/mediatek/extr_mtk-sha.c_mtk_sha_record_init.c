
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_rec {int id; int done_task; int queue_task; int queue; int lock; struct mtk_cryp* cryp; } ;
struct mtk_cryp {int rec; struct mtk_sha_rec** sha; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTK_REC_NUM ;
 int MTK_RING2 ;
 int MTK_RING3 ;
 int SHA_QUEUE_SIZE ;
 int crypto_init_queue (int *,int ) ;
 int kfree (struct mtk_sha_rec*) ;
 struct mtk_sha_rec* kzalloc (int,int ) ;
 int mtk_sha_done_task ;
 int mtk_sha_queue_task ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int mtk_sha_record_init(struct mtk_cryp *cryp)
{
 struct mtk_sha_rec **sha = cryp->sha;
 int i, err = -ENOMEM;

 for (i = 0; i < MTK_REC_NUM; i++) {
  sha[i] = kzalloc(sizeof(**sha), GFP_KERNEL);
  if (!sha[i])
   goto err_cleanup;

  sha[i]->cryp = cryp;

  spin_lock_init(&sha[i]->lock);
  crypto_init_queue(&sha[i]->queue, SHA_QUEUE_SIZE);

  tasklet_init(&sha[i]->queue_task, mtk_sha_queue_task,
        (unsigned long)sha[i]);
  tasklet_init(&sha[i]->done_task, mtk_sha_done_task,
        (unsigned long)sha[i]);
 }


 sha[0]->id = MTK_RING2;
 sha[1]->id = MTK_RING3;

 cryp->rec = 1;

 return 0;

err_cleanup:
 for (; i--; )
  kfree(sha[i]);
 return err;
}
