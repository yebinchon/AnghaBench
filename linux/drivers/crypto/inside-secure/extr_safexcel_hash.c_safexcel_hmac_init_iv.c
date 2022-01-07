
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct safexcel_ahash_result {int error; int completion; } ;
struct safexcel_ahash_req {int hmac; int last_req; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int ,int ,struct safexcel_ahash_result*) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,unsigned int) ;
 int crypto_ahash_export (struct ahash_request*,void*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int init_completion (int *) ;
 int safexcel_ahash_complete ;
 int sg_init_one (struct scatterlist*,int *,unsigned int) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int safexcel_hmac_init_iv(struct ahash_request *areq,
     unsigned int blocksize, u8 *pad, void *state)
{
 struct safexcel_ahash_result result;
 struct safexcel_ahash_req *req;
 struct scatterlist sg;
 int ret;

 ahash_request_set_callback(areq, CRYPTO_TFM_REQ_MAY_BACKLOG,
       safexcel_ahash_complete, &result);
 sg_init_one(&sg, pad, blocksize);
 ahash_request_set_crypt(areq, &sg, pad, blocksize);
 init_completion(&result.completion);

 ret = crypto_ahash_init(areq);
 if (ret)
  return ret;

 req = ahash_request_ctx(areq);
 req->hmac = 1;
 req->last_req = 1;

 ret = crypto_ahash_update(areq);
 if (ret && ret != -EINPROGRESS && ret != -EBUSY)
  return ret;

 wait_for_completion_interruptible(&result.completion);
 if (result.error)
  return result.error;

 return crypto_ahash_export(areq, state);
}
