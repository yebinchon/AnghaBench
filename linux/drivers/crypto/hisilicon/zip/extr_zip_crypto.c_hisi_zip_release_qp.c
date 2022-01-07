
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip_qp_ctx {int qp; } ;


 int hisi_qm_release_qp (int ) ;
 int hisi_qm_stop_qp (int ) ;

__attribute__((used)) static void hisi_zip_release_qp(struct hisi_zip_qp_ctx *ctx)
{
 hisi_qm_stop_qp(ctx->qp);
 hisi_qm_release_qp(ctx->qp);
}
