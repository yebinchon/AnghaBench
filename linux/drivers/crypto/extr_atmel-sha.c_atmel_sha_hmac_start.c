
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int op; } ;
struct atmel_sha_dev {int resume; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int EINVAL ;




 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int) ;
 int atmel_sha_done ;
 int atmel_sha_final_req (struct atmel_sha_dev*) ;
 int atmel_sha_hmac_digest2 ;
 int atmel_sha_hmac_final ;
 int atmel_sha_hmac_init_done ;
 int atmel_sha_hmac_setup (struct atmel_sha_dev*,int ) ;
 int atmel_sha_hw_init (struct atmel_sha_dev*) ;
 int atmel_sha_update_req (struct atmel_sha_dev*) ;

__attribute__((used)) static int atmel_sha_hmac_start(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 int err;

 err = atmel_sha_hw_init(dd);
 if (err)
  return atmel_sha_complete(dd, err);

 switch (ctx->op) {
 case 129:
  err = atmel_sha_hmac_setup(dd, atmel_sha_hmac_init_done);
  break;

 case 128:
  dd->resume = atmel_sha_done;
  err = atmel_sha_update_req(dd);
  break;

 case 130:
  dd->resume = atmel_sha_hmac_final;
  err = atmel_sha_final_req(dd);
  break;

 case 131:
  err = atmel_sha_hmac_setup(dd, atmel_sha_hmac_digest2);
  break;

 default:
  return atmel_sha_complete(dd, -EINVAL);
 }

 return err;
}
