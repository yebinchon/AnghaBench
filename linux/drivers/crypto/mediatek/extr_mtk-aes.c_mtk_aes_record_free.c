
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {TYPE_1__** aes; } ;
struct TYPE_2__ {scalar_t__ buf; int queue_task; int done_task; } ;


 int MTK_REC_NUM ;
 int free_page (unsigned long) ;
 int kfree (TYPE_1__*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void mtk_aes_record_free(struct mtk_cryp *cryp)
{
 int i;

 for (i = 0; i < MTK_REC_NUM; i++) {
  tasklet_kill(&cryp->aes[i]->done_task);
  tasklet_kill(&cryp->aes[i]->queue_task);

  free_page((unsigned long)cryp->aes[i]->buf);
  kfree(cryp->aes[i]);
 }
}
