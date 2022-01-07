
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {scalar_t__ n_sz; scalar_t__ priv_form; int d; int n; } ;
struct caam_rsa_ctx {int dev; struct caam_rsa_key key; } ;
struct akcipher_request {scalar_t__ dst_len; } ;


 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ FORM2 ;
 scalar_t__ FORM3 ;
 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int caam_rsa_dec_priv_f1 (struct akcipher_request*) ;
 int caam_rsa_dec_priv_f2 (struct akcipher_request*) ;
 int caam_rsa_dec_priv_f3 (struct akcipher_request*) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int dev_err (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int caam_rsa_dec(struct akcipher_request *req)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct caam_rsa_key *key = &ctx->key;
 int ret;

 if (unlikely(!key->n || !key->d))
  return -EINVAL;

 if (req->dst_len < key->n_sz) {
  req->dst_len = key->n_sz;
  dev_err(ctx->dev, "Output buffer length less than parameter n\n");
  return -EOVERFLOW;
 }

 if (key->priv_form == FORM3)
  ret = caam_rsa_dec_priv_f3(req);
 else if (key->priv_form == FORM2)
  ret = caam_rsa_dec_priv_f2(req);
 else
  ret = caam_rsa_dec_priv_f1(req);

 return ret;
}
