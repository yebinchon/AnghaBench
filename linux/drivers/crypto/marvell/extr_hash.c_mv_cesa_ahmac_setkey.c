
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
 int mv_cesa_ahmac_iv_state_init (struct ahash_request*,int *,void*,unsigned int) ;
 int mv_cesa_ahmac_pad_init (struct ahash_request*,int const*,unsigned int,int *,int *,unsigned int) ;

__attribute__((used)) static int mv_cesa_ahmac_setkey(const char *hash_alg_name,
    const u8 *key, unsigned int keylen,
    void *istate, void *ostate)
{
 struct ahash_request *req;
 struct crypto_ahash *tfm;
 unsigned int blocksize;
 u8 *ipad = ((void*)0);
 u8 *opad;
 int ret;

 tfm = crypto_alloc_ahash(hash_alg_name, 0, 0);
 if (IS_ERR(tfm))
  return PTR_ERR(tfm);

 req = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!req) {
  ret = -ENOMEM;
  goto free_ahash;
 }

 crypto_ahash_clear_flags(tfm, ~0);

 blocksize = crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));

 ipad = kcalloc(2, blocksize, GFP_KERNEL);
 if (!ipad) {
  ret = -ENOMEM;
  goto free_req;
 }

 opad = ipad + blocksize;

 ret = mv_cesa_ahmac_pad_init(req, key, keylen, ipad, opad, blocksize);
 if (ret)
  goto free_ipad;

 ret = mv_cesa_ahmac_iv_state_init(req, ipad, istate, blocksize);
 if (ret)
  goto free_ipad;

 ret = mv_cesa_ahmac_iv_state_init(req, opad, ostate, blocksize);

free_ipad:
 kfree(ipad);
free_req:
 ahash_request_free(req);
free_ahash:
 crypto_free_ahash(tfm);

 return ret;
}
