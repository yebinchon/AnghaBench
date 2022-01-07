
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iproc_reqctx_s {int bd_suppress; int is_final; scalar_t__ total_todo; int chan_idx; scalar_t__ dst_nents; scalar_t__ dst_skip; int * dst_sg; scalar_t__ src_nents; scalar_t__ src_skip; int src_sg; int mb_mssg; struct iproc_ctx_s* ctx; TYPE_1__* parent; int gfp; } ;
struct iproc_ctx_s {int authkeylen; int authkey; } ;
struct crypto_ahash {int dummy; } ;
struct brcm_message {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct ahash_request {int nbytes; int result; int src; TYPE_1__ base; } ;
struct TYPE_5__ {scalar_t__ spu_type; } ;
struct TYPE_6__ {TYPE_2__ spu; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EAGAIN ;
 int EINPROGRESS ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ SPU_TYPE_SPU2 ;
 struct iproc_reqctx_s* ahash_request_ctx (struct ahash_request*) ;
 struct iproc_ctx_s* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 char* crypto_tfm_alg_name (int ) ;
 int do_shash (unsigned char*,int ,int *,int ,int *,int ,int ,int ) ;
 int flow_log (char*,...) ;
 int handle_ahash_req (struct iproc_reqctx_s*) ;
 TYPE_3__ iproc_priv ;
 int memset (int *,int ,int) ;
 int select_channel () ;
 int spu_chunk_cleanup (struct iproc_reqctx_s*) ;

__attribute__((used)) static int ahash_enqueue(struct ahash_request *req)
{
 struct iproc_reqctx_s *rctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct iproc_ctx_s *ctx = crypto_ahash_ctx(tfm);
 int err = 0;
 const char *alg_name;

 flow_log("ahash_enqueue() nbytes:%u\n", req->nbytes);

 rctx->gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
         CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
 rctx->parent = &req->base;
 rctx->ctx = ctx;
 rctx->bd_suppress = 1;
 memset(&rctx->mb_mssg, 0, sizeof(struct brcm_message));


 rctx->src_sg = req->src;
 rctx->src_skip = 0;
 rctx->src_nents = 0;
 rctx->dst_sg = ((void*)0);
 rctx->dst_skip = 0;
 rctx->dst_nents = 0;


 if ((rctx->is_final == 1) && (rctx->total_todo == 0) &&
     (iproc_priv.spu.spu_type == SPU_TYPE_SPU2)) {
  alg_name = crypto_tfm_alg_name(crypto_ahash_tfm(tfm));
  flow_log("Doing %sfinal %s zero-len hash request in software\n",
    rctx->is_final ? "" : "non-", alg_name);
  err = do_shash((unsigned char *)alg_name, req->result,
          ((void*)0), 0, ((void*)0), 0, ctx->authkey,
          ctx->authkeylen);
  if (err < 0)
   flow_log("Hash request failed with error %d\n", err);
  return err;
 }

 rctx->chan_idx = select_channel();

 err = handle_ahash_req(rctx);
 if (err != -EINPROGRESS)

  spu_chunk_cleanup(rctx);

 if (err == -EAGAIN)




  err = 0;

 return err;
}
