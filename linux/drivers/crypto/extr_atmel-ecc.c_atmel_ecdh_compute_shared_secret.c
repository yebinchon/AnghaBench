
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct kpp_request {scalar_t__ src_len; int src; TYPE_1__ base; } ;
struct crypto_kpp {int dummy; } ;
struct atmel_i2c_work_data {int cmd; int client; struct atmel_ecdh_ctx* ctx; } ;
struct atmel_ecdh_ctx {int client; int fallback; scalar_t__ do_fallback; } ;
typedef int gfp_t ;


 scalar_t__ ATMEL_ECC_PUBKEY_SIZE ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int atmel_ecdh_done ;
 int atmel_i2c_enqueue (struct atmel_i2c_work_data*,int ,struct kpp_request*) ;
 int atmel_i2c_init_ecdh_cmd (int *,int ) ;
 int crypto_kpp_compute_shared_secret (struct kpp_request*) ;
 struct crypto_kpp* crypto_kpp_reqtfm (struct kpp_request*) ;
 int kfree (struct atmel_i2c_work_data*) ;
 struct atmel_i2c_work_data* kmalloc (int,int ) ;
 int kpp_request_set_tfm (struct kpp_request*,int ) ;
 struct atmel_ecdh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;

__attribute__((used)) static int atmel_ecdh_compute_shared_secret(struct kpp_request *req)
{
 struct crypto_kpp *tfm = crypto_kpp_reqtfm(req);
 struct atmel_ecdh_ctx *ctx = kpp_tfm_ctx(tfm);
 struct atmel_i2c_work_data *work_data;
 gfp_t gfp;
 int ret;

 if (ctx->do_fallback) {
  kpp_request_set_tfm(req, ctx->fallback);
  return crypto_kpp_compute_shared_secret(req);
 }


 if (req->src_len != ATMEL_ECC_PUBKEY_SIZE)
  return -EINVAL;

 gfp = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ? GFP_KERNEL :
            GFP_ATOMIC;

 work_data = kmalloc(sizeof(*work_data), gfp);
 if (!work_data)
  return -ENOMEM;

 work_data->ctx = ctx;
 work_data->client = ctx->client;

 ret = atmel_i2c_init_ecdh_cmd(&work_data->cmd, req->src);
 if (ret)
  goto free_work_data;

 atmel_i2c_enqueue(work_data, atmel_ecdh_done, req);

 return -EINPROGRESS;

free_work_data:
 kfree(work_data);
 return ret;
}
