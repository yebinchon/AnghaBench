
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int align_size; int src_nents; int first; int sg_src; int * sg_dst; scalar_t__ aligned; int left_bytes; int total; int async_req; } ;
struct rk_ahash_rctx {scalar_t__ mode; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int src; int nbytes; } ;


 int EINVAL ;

 scalar_t__ RK_CRYPTO_HASH_MD5 ;
 scalar_t__ RK_CRYPTO_HASH_SHA1 ;
 scalar_t__ RK_CRYPTO_HASH_SHA256 ;


 struct ahash_request* ahash_request_cast (int ) ;
 struct rk_ahash_rctx* ahash_request_ctx (struct ahash_request*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int rk_ahash_reg_init (struct rk_crypto_info*) ;
 int rk_ahash_set_data_start (struct rk_crypto_info*) ;
 int sg_nents (int ) ;

__attribute__((used)) static int rk_ahash_start(struct rk_crypto_info *dev)
{
 struct ahash_request *req = ahash_request_cast(dev->async_req);
 struct crypto_ahash *tfm;
 struct rk_ahash_rctx *rctx;

 dev->total = req->nbytes;
 dev->left_bytes = req->nbytes;
 dev->aligned = 0;
 dev->align_size = 4;
 dev->sg_dst = ((void*)0);
 dev->sg_src = req->src;
 dev->first = req->src;
 dev->src_nents = sg_nents(req->src);
 rctx = ahash_request_ctx(req);
 rctx->mode = 0;

 tfm = crypto_ahash_reqtfm(req);
 switch (crypto_ahash_digestsize(tfm)) {
 case 129:
  rctx->mode = RK_CRYPTO_HASH_SHA1;
  break;
 case 128:
  rctx->mode = RK_CRYPTO_HASH_SHA256;
  break;
 case 130:
  rctx->mode = RK_CRYPTO_HASH_MD5;
  break;
 default:
  return -EINVAL;
 }

 rk_ahash_reg_init(dev);
 return rk_ahash_set_data_start(dev);
}
