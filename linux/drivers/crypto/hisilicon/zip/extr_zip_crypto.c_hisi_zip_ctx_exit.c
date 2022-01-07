
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip_ctx {int * qp_ctx; } ;


 int hisi_zip_release_qp (int *) ;

__attribute__((used)) static void hisi_zip_ctx_exit(struct hisi_zip_ctx *hisi_zip_ctx)
{
 int i;

 for (i = 1; i >= 0; i--)
  hisi_zip_release_qp(&hisi_zip_ctx->qp_ctx[i]);
}
