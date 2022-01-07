
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip_ctx {int dummy; } ;
struct crypto_acomp {int base; } ;


 int COMP_NAME_TO_TYPE (char const*) ;
 char* crypto_tfm_alg_name (int *) ;
 struct hisi_zip_ctx* crypto_tfm_ctx (int *) ;
 int hisi_zip_acomp_cb ;
 int hisi_zip_create_req_q (struct hisi_zip_ctx*) ;
 int hisi_zip_create_sgl_pool (struct hisi_zip_ctx*) ;
 int hisi_zip_ctx_exit (struct hisi_zip_ctx*) ;
 int hisi_zip_ctx_init (struct hisi_zip_ctx*,int ) ;
 int hisi_zip_release_req_q (struct hisi_zip_ctx*) ;
 int hisi_zip_set_acomp_cb (struct hisi_zip_ctx*,int ) ;

__attribute__((used)) static int hisi_zip_acomp_init(struct crypto_acomp *tfm)
{
 const char *alg_name = crypto_tfm_alg_name(&tfm->base);
 struct hisi_zip_ctx *ctx = crypto_tfm_ctx(&tfm->base);
 int ret;

 ret = hisi_zip_ctx_init(ctx, COMP_NAME_TO_TYPE(alg_name));
 if (ret)
  return ret;

 ret = hisi_zip_create_req_q(ctx);
 if (ret)
  goto err_ctx_exit;

 ret = hisi_zip_create_sgl_pool(ctx);
 if (ret)
  goto err_release_req_q;

 hisi_zip_set_acomp_cb(ctx, hisi_zip_acomp_cb);

 return 0;

err_release_req_q:
 hisi_zip_release_req_q(ctx);
err_ctx_exit:
 hisi_zip_ctx_exit(ctx);
 return ret;
}
