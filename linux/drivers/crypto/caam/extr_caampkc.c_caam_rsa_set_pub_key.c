
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_key {int n_sz; int e_sz; int n; int e; int * member_0; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {int n_sz; int e_sz; int n; int e; } ;
struct caam_rsa_ctx {struct caam_rsa_key key; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int caam_read_raw_data (int ,int*) ;
 scalar_t__ caam_rsa_check_key_length (int) ;
 int caam_rsa_free_key (struct caam_rsa_key*) ;
 int kmemdup (int ,int ,int) ;
 int rsa_parse_pub_key (struct rsa_key*,void const*,unsigned int) ;

__attribute__((used)) static int caam_rsa_set_pub_key(struct crypto_akcipher *tfm, const void *key,
    unsigned int keylen)
{
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct rsa_key raw_key = {((void*)0)};
 struct caam_rsa_key *rsa_key = &ctx->key;
 int ret;


 caam_rsa_free_key(rsa_key);

 ret = rsa_parse_pub_key(&raw_key, key, keylen);
 if (ret)
  return ret;


 rsa_key->e = kmemdup(raw_key.e, raw_key.e_sz, GFP_DMA | GFP_KERNEL);
 if (!rsa_key->e)
  goto err;







 rsa_key->n = caam_read_raw_data(raw_key.n, &raw_key.n_sz);
 if (!rsa_key->n)
  goto err;

 if (caam_rsa_check_key_length(raw_key.n_sz << 3)) {
  caam_rsa_free_key(rsa_key);
  return -EINVAL;
 }

 rsa_key->e_sz = raw_key.e_sz;
 rsa_key->n_sz = raw_key.n_sz;

 return 0;
err:
 caam_rsa_free_key(rsa_key);
 return -ENOMEM;
}
