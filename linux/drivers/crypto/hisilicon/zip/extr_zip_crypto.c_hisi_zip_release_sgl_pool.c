
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hisi_zip_ctx {TYPE_4__* qp_ctx; } ;
struct TYPE_8__ {int sgl_pool; TYPE_3__* qp; } ;
struct TYPE_7__ {TYPE_2__* qm; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int HZIP_CTX_Q_NUM ;
 int hisi_acc_free_sgl_pool (int *,int *) ;

__attribute__((used)) static void hisi_zip_release_sgl_pool(struct hisi_zip_ctx *ctx)
{
 int i;

 for (i = 0; i < HZIP_CTX_Q_NUM; i++)
  hisi_acc_free_sgl_pool(&ctx->qp_ctx[i].qp->qm->pdev->dev,
           &ctx->qp_ctx[i].sgl_pool);
}
