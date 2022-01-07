
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct spu_queue {int tail; int lock; struct cwq_initial_entry* q; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {int nbytes; int result; int src; TYPE_1__ base; } ;
struct n2_hash_req_ctx {TYPE_3__ fallback_req; } ;
struct n2_hash_ctx {int fallback_tfm; } ;
struct cwq_initial_entry {int control; unsigned long auth_key_addr; unsigned long auth_iv_addr; unsigned long final_auth_state_addr; unsigned long enc_key_addr; unsigned long enc_iv_addr; unsigned long dest_addr; void* src_addr; } ;
struct crypto_hash_walk {void* data; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ahash_request {int nbytes; int result; int src; TYPE_2__ base; } ;


 int CONTROL_END_OF_BLOCK ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ HV_EOK ;
 int OPCODE_AUTH_MAC ;
 int OPCODE_INPLACE_BIT ;
 void* __pa (void*) ;
 struct n2_hash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int ahash_request_set_tfm (TYPE_3__*,int ) ;
 int control_word_base (int,unsigned int,int ,unsigned int,unsigned int,int,int,int,int,int) ;
 struct spu_queue** cpu_to_cwq ;
 struct n2_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digest (TYPE_3__*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_hash_walk_done (struct crypto_hash_walk*,int ) ;
 int crypto_hash_walk_first (struct ahash_request*,struct crypto_hash_walk*) ;
 int get_cpu () ;
 int memcpy (int ,void*,unsigned int) ;
 int put_cpu () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cwq_initial_entry* spu_queue_next (struct spu_queue*,struct cwq_initial_entry*) ;
 scalar_t__ submit_and_wait_for_tail (struct spu_queue*,struct cwq_initial_entry*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int n2_do_async_digest(struct ahash_request *req,
         unsigned int auth_type, unsigned int digest_size,
         unsigned int result_size, void *hash_loc,
         unsigned long auth_key, unsigned int auth_key_len)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cwq_initial_entry *ent;
 struct crypto_hash_walk walk;
 struct spu_queue *qp;
 unsigned long flags;
 int err = -ENODEV;
 int nbytes, cpu;




 if (unlikely(req->nbytes > (1 << 16))) {
  struct n2_hash_req_ctx *rctx = ahash_request_ctx(req);
  struct n2_hash_ctx *ctx = crypto_ahash_ctx(tfm);

  ahash_request_set_tfm(&rctx->fallback_req, ctx->fallback_tfm);
  rctx->fallback_req.base.flags =
   req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
  rctx->fallback_req.nbytes = req->nbytes;
  rctx->fallback_req.src = req->src;
  rctx->fallback_req.result = req->result;

  return crypto_ahash_digest(&rctx->fallback_req);
 }

 nbytes = crypto_hash_walk_first(req, &walk);

 cpu = get_cpu();
 qp = cpu_to_cwq[cpu];
 if (!qp)
  goto out;

 spin_lock_irqsave(&qp->lock, flags);




 ent = qp->q + qp->tail;

 ent->control = control_word_base(nbytes, auth_key_len, 0,
      auth_type, digest_size,
      0, 1, 0, 0,
      OPCODE_INPLACE_BIT |
      OPCODE_AUTH_MAC);
 ent->src_addr = __pa(walk.data);
 ent->auth_key_addr = auth_key;
 ent->auth_iv_addr = __pa(hash_loc);
 ent->final_auth_state_addr = 0UL;
 ent->enc_key_addr = 0UL;
 ent->enc_iv_addr = 0UL;
 ent->dest_addr = __pa(hash_loc);

 nbytes = crypto_hash_walk_done(&walk, 0);
 while (nbytes > 0) {
  ent = spu_queue_next(qp, ent);

  ent->control = (nbytes - 1);
  ent->src_addr = __pa(walk.data);
  ent->auth_key_addr = 0UL;
  ent->auth_iv_addr = 0UL;
  ent->final_auth_state_addr = 0UL;
  ent->enc_key_addr = 0UL;
  ent->enc_iv_addr = 0UL;
  ent->dest_addr = 0UL;

  nbytes = crypto_hash_walk_done(&walk, 0);
 }
 ent->control |= CONTROL_END_OF_BLOCK;

 if (submit_and_wait_for_tail(qp, ent) != HV_EOK)
  err = -EINVAL;
 else
  err = 0;

 spin_unlock_irqrestore(&qp->lock, flags);

 if (!err)
  memcpy(req->result, hash_loc, result_size);
out:
 put_cpu();

 return err;
}
