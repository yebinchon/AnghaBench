
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_uinfo {int state; int async_req; } ;
struct crypto4xx_device {int dummy; } ;
struct crypto4xx_ctx {int dummy; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; int result; } ;


 int EINPROGRESS ;
 int PD_ENTRY_BUSY ;
 struct ahash_request* ahash_request_cast (int ) ;
 int ahash_request_complete (struct ahash_request*,int ) ;
 int crypto4xx_copy_digest_to_dst (int ,struct pd_uinfo*,struct crypto4xx_ctx*) ;
 int crypto4xx_ret_sg_desc (struct crypto4xx_device*,struct pd_uinfo*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;

__attribute__((used)) static void crypto4xx_ahash_done(struct crypto4xx_device *dev,
    struct pd_uinfo *pd_uinfo)
{
 struct crypto4xx_ctx *ctx;
 struct ahash_request *ahash_req;

 ahash_req = ahash_request_cast(pd_uinfo->async_req);
 ctx = crypto_tfm_ctx(ahash_req->base.tfm);

 crypto4xx_copy_digest_to_dst(ahash_req->result, pd_uinfo,
         crypto_tfm_ctx(ahash_req->base.tfm));
 crypto4xx_ret_sg_desc(dev, pd_uinfo);

 if (pd_uinfo->state & PD_ENTRY_BUSY)
  ahash_request_complete(ahash_req, -EINPROGRESS);
 ahash_request_complete(ahash_req, 0);
}
