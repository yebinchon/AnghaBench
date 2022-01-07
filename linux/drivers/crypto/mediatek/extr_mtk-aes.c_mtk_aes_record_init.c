
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {struct mtk_aes_rec** aes; } ;
struct mtk_aes_rec {void* buf; int id; int done_task; int queue_task; int queue; int lock; struct mtk_cryp* cryp; } ;


 int AES_BUF_ORDER ;
 int AES_QUEUE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTK_REC_NUM ;
 int MTK_RING0 ;
 int MTK_RING1 ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int crypto_init_queue (int *,int ) ;
 int free_page (unsigned long) ;
 int kfree (struct mtk_aes_rec*) ;
 struct mtk_aes_rec* kzalloc (int,int ) ;
 int mtk_aes_done_task ;
 int mtk_aes_queue_task ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int mtk_aes_record_init(struct mtk_cryp *cryp)
{
 struct mtk_aes_rec **aes = cryp->aes;
 int i, err = -ENOMEM;

 for (i = 0; i < MTK_REC_NUM; i++) {
  aes[i] = kzalloc(sizeof(**aes), GFP_KERNEL);
  if (!aes[i])
   goto err_cleanup;

  aes[i]->buf = (void *)__get_free_pages(GFP_KERNEL,
      AES_BUF_ORDER);
  if (!aes[i]->buf)
   goto err_cleanup;

  aes[i]->cryp = cryp;

  spin_lock_init(&aes[i]->lock);
  crypto_init_queue(&aes[i]->queue, AES_QUEUE_SIZE);

  tasklet_init(&aes[i]->queue_task, mtk_aes_queue_task,
        (unsigned long)aes[i]);
  tasklet_init(&aes[i]->done_task, mtk_aes_done_task,
        (unsigned long)aes[i]);
 }


 aes[0]->id = MTK_RING0;
 aes[1]->id = MTK_RING1;

 return 0;

err_cleanup:
 for (; i--; ) {
  free_page((unsigned long)aes[i]->buf);
  kfree(aes[i]);
 }

 return err;
}
