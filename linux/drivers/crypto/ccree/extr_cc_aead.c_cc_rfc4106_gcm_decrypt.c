
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {int drvdata; } ;
struct aead_request {int iv; int assoclen; } ;
struct aead_req_ctx {int plaintext_authenticate_only; int is_gcm4543; int backup_iv; int assoclen; } ;


 int DRV_CRYPTO_DIRECTION_DECRYPT ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int cc_proc_aead (struct aead_request*,int ) ;
 int cc_proc_rfc4_gcm (struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dev_err (struct device*,char*,int ) ;
 struct device* drvdata_to_dev (int ) ;
 int memset (struct aead_req_ctx*,int ,int) ;
 int valid_assoclen (struct aead_request*) ;

__attribute__((used)) static int cc_rfc4106_gcm_decrypt(struct aead_request *req)
{


 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);
 struct aead_req_ctx *areq_ctx = aead_request_ctx(req);
 int rc = -EINVAL;

 if (!valid_assoclen(req)) {
  dev_err(dev, "invalid Assoclen:%u\n", req->assoclen);
  goto out;
 }

 memset(areq_ctx, 0, sizeof(*areq_ctx));


 areq_ctx->backup_iv = req->iv;
 areq_ctx->assoclen = req->assoclen;
 areq_ctx->plaintext_authenticate_only = 0;

 cc_proc_rfc4_gcm(req);
 areq_ctx->is_gcm4543 = 1;

 rc = cc_proc_aead(req, DRV_CRYPTO_DIRECTION_DECRYPT);
 if (rc != -EINPROGRESS && rc != -EBUSY)
  req->iv = areq_ctx->backup_iv;
out:
 return rc;
}
