
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_sha_rec {int flags; int queue_task; TYPE_2__* req; } ;
struct mtk_cryp {int dummy; } ;
struct TYPE_3__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int SHA_FLAGS_BUSY ;
 int SHA_FLAGS_FINAL ;
 scalar_t__ likely (int) ;
 int mtk_sha_finish (TYPE_2__*) ;
 int stub1 (TYPE_1__*,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void mtk_sha_finish_req(struct mtk_cryp *cryp,
          struct mtk_sha_rec *sha,
          int err)
{
 if (likely(!err && (SHA_FLAGS_FINAL & sha->flags)))
  err = mtk_sha_finish(sha->req);

 sha->flags &= ~(SHA_FLAGS_BUSY | SHA_FLAGS_FINAL);

 sha->req->base.complete(&sha->req->base, err);


 tasklet_schedule(&sha->queue_task);
}
