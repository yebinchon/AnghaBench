
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {int dummy; } ;
struct mtk_aes_rec {int queue_task; TYPE_1__* areq; int flags; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;


 int AES_FLAGS_BUSY ;
 int stub1 (TYPE_1__*,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline int mtk_aes_complete(struct mtk_cryp *cryp,
       struct mtk_aes_rec *aes,
       int err)
{
 aes->flags &= ~AES_FLAGS_BUSY;
 aes->areq->complete(aes->areq, err);

 tasklet_schedule(&aes->queue_task);
 return err;
}
