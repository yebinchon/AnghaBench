
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 struct ahash_request* ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (struct ahash_request*) ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int ) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_alloc_ahash (char const*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int * kcalloc (int,unsigned int,int ) ;
 int kfree (int *) ;
 int safexcel_hmac_init_iv (struct ahash_request*,unsigned int,int *,void*) ;
 int safexcel_hmac_init_pad (struct ahash_request*,unsigned int,int const*,unsigned int,int *,int *) ;

int safexcel_hmac_setkey(const char *alg, const u8 *key, unsigned int keylen,
    void *istate, void *ostate)
{
 struct ahash_request *areq;
 struct crypto_ahash *tfm;
 unsigned int blocksize;
 u8 *ipad, *opad;
 int ret;

 tfm = crypto_alloc_ahash(alg, 0, 0);
 if (IS_ERR(tfm))
  return PTR_ERR(tfm);

 areq = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!areq) {
  ret = -ENOMEM;
  goto free_ahash;
 }

 crypto_ahash_clear_flags(tfm, ~0);
 blocksize = crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));

 ipad = kcalloc(2, blocksize, GFP_KERNEL);
 if (!ipad) {
  ret = -ENOMEM;
  goto free_request;
 }

 opad = ipad + blocksize;

 ret = safexcel_hmac_init_pad(areq, blocksize, key, keylen, ipad, opad);
 if (ret)
  goto free_ipad;

 ret = safexcel_hmac_init_iv(areq, blocksize, ipad, istate);
 if (ret)
  goto free_ipad;

 ret = safexcel_hmac_init_iv(areq, blocksize, opad, ostate);

free_ipad:
 kfree(ipad);
free_request:
 ahash_request_free(areq);
free_ahash:
 crypto_free_ahash(tfm);

 return ret;
}
