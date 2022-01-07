
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int desc_hdr_template; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {unsigned int nbytes; } ;


 int DESC_HDR_MODE0_ENCRYPT ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct talitos_edesc*) ;
 int PTR_ERR (struct talitos_edesc*) ;
 int ablkcipher_done ;
 struct talitos_edesc* ablkcipher_edesc_alloc (struct ablkcipher_request*,int) ;
 int common_nonsnoop (struct talitos_edesc*,struct ablkcipher_request*,int ) ;
 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;

__attribute__((used)) static int ablkcipher_encrypt(struct ablkcipher_request *areq)
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 struct talitos_edesc *edesc;
 unsigned int blocksize =
   crypto_tfm_alg_blocksize(crypto_ablkcipher_tfm(cipher));

 if (!areq->nbytes)
  return 0;

 if (areq->nbytes % blocksize)
  return -EINVAL;


 edesc = ablkcipher_edesc_alloc(areq, 1);
 if (IS_ERR(edesc))
  return PTR_ERR(edesc);


 edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

 return common_nonsnoop(edesc, areq, ablkcipher_done);
}
