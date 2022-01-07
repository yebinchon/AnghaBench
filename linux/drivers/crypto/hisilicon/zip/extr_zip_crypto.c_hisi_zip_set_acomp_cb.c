
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_zip_ctx {TYPE_2__* qp_ctx; } ;
struct TYPE_4__ {TYPE_1__* qp; } ;
struct TYPE_3__ {void (* req_cb ) (struct hisi_qp*,void*) ;} ;


 int HZIP_CTX_Q_NUM ;

__attribute__((used)) static void hisi_zip_set_acomp_cb(struct hisi_zip_ctx *ctx,
      void (*fn)(struct hisi_qp *, void *))
{
 int i;

 for (i = 0; i < HZIP_CTX_Q_NUM; i++)
  ctx->qp_ctx[i].qp->req_cb = fn;
}
