
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip_ctx {int dummy; } ;
struct crypto_acomp {int base; } ;


 struct hisi_zip_ctx* crypto_tfm_ctx (int *) ;
 int hisi_zip_ctx_exit (struct hisi_zip_ctx*) ;
 int hisi_zip_release_req_q (struct hisi_zip_ctx*) ;
 int hisi_zip_release_sgl_pool (struct hisi_zip_ctx*) ;
 int hisi_zip_set_acomp_cb (struct hisi_zip_ctx*,int *) ;

__attribute__((used)) static void hisi_zip_acomp_exit(struct crypto_acomp *tfm)
{
 struct hisi_zip_ctx *ctx = crypto_tfm_ctx(&tfm->base);

 hisi_zip_set_acomp_cb(ctx, ((void*)0));
 hisi_zip_release_sgl_pool(ctx);
 hisi_zip_release_req_q(ctx);
 hisi_zip_ctx_exit(ctx);
}
