
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {TYPE_1__** sha; } ;
struct TYPE_2__ {int queue_task; int done_task; } ;


 int MTK_REC_NUM ;
 int kfree (TYPE_1__*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void mtk_sha_record_free(struct mtk_cryp *cryp)
{
 int i;

 for (i = 0; i < MTK_REC_NUM; i++) {
  tasklet_kill(&cryp->sha[i]->done_task);
  tasklet_kill(&cryp->sha[i]->queue_task);

  kfree(cryp->sha[i]);
 }
}
