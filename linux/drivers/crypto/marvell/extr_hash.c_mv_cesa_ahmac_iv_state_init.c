
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct mv_cesa_ahash_result {int error; int completion; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EINPROGRESS ;
 int ahash_request_set_callback (struct ahash_request*,int ,int ,struct mv_cesa_ahash_result*) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,unsigned int) ;
 int crypto_ahash_export (struct ahash_request*,void*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int init_completion (int *) ;
 int mv_cesa_hmac_ahash_complete ;
 int sg_init_one (struct scatterlist*,int *,unsigned int) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int mv_cesa_ahmac_iv_state_init(struct ahash_request *req, u8 *pad,
           void *state, unsigned int blocksize)
{
 struct mv_cesa_ahash_result result;
 struct scatterlist sg;
 int ret;

 ahash_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
       mv_cesa_hmac_ahash_complete, &result);
 sg_init_one(&sg, pad, blocksize);
 ahash_request_set_crypt(req, &sg, pad, blocksize);
 init_completion(&result.completion);

 ret = crypto_ahash_init(req);
 if (ret)
  return ret;

 ret = crypto_ahash_update(req);
 if (ret && ret != -EINPROGRESS)
  return ret;

 wait_for_completion_interruptible(&result.completion);
 if (result.error)
  return result.error;

 ret = crypto_ahash_export(req, state);
 if (ret)
  return ret;

 return 0;
}
