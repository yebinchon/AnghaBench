
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_zip_ctx {TYPE_2__* qp_ctx; } ;
struct TYPE_3__ {int req_bitmap; int q; } ;
struct TYPE_4__ {TYPE_1__ req_q; } ;


 int HZIP_CTX_Q_NUM ;
 int kfree (int ) ;

__attribute__((used)) static void hisi_zip_release_req_q(struct hisi_zip_ctx *ctx)
{
 int i;

 for (i = 0; i < HZIP_CTX_Q_NUM; i++) {
  kfree(ctx->qp_ctx[i].req_q.q);
  kfree(ctx->qp_ctx[i].req_q.req_bitmap);
 }
}
