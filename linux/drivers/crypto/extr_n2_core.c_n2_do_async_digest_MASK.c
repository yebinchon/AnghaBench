#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct spu_queue {int tail; int /*<<< orphan*/  lock; struct cwq_initial_entry* q; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {int nbytes; int /*<<< orphan*/  result; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct n2_hash_req_ctx {TYPE_3__ fallback_req; } ;
struct n2_hash_ctx {int /*<<< orphan*/  fallback_tfm; } ;
struct cwq_initial_entry {int control; unsigned long auth_key_addr; unsigned long auth_iv_addr; unsigned long final_auth_state_addr; unsigned long enc_key_addr; unsigned long enc_iv_addr; unsigned long dest_addr; void* src_addr; } ;
struct crypto_hash_walk {void* data; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ahash_request {int nbytes; int /*<<< orphan*/  result; int /*<<< orphan*/  src; TYPE_2__ base; } ;

/* Variables and functions */
 int CONTROL_END_OF_BLOCK ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ HV_EOK ; 
 int OPCODE_AUTH_MAC ; 
 int OPCODE_INPLACE_BIT ; 
 void* FUNC0 (void*) ; 
 struct n2_hash_req_ctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int,int,int,int) ; 
 struct spu_queue** cpu_to_cwq ; 
 struct n2_hash_ctx* FUNC4 (struct crypto_ahash*) ; 
 int FUNC5 (TYPE_3__*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int FUNC7 (struct crypto_hash_walk*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ahash_request*,struct crypto_hash_walk*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cwq_initial_entry* FUNC14 (struct spu_queue*,struct cwq_initial_entry*) ; 
 scalar_t__ FUNC15 (struct spu_queue*,struct cwq_initial_entry*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct ahash_request *req,
			      unsigned int auth_type, unsigned int digest_size,
			      unsigned int result_size, void *hash_loc,
			      unsigned long auth_key, unsigned int auth_key_len)
{
	struct crypto_ahash *tfm = FUNC6(req);
	struct cwq_initial_entry *ent;
	struct crypto_hash_walk walk;
	struct spu_queue *qp;
	unsigned long flags;
	int err = -ENODEV;
	int nbytes, cpu;

	/* The total effective length of the operation may not
	 * exceed 2^16.
	 */
	if (FUNC16(req->nbytes > (1 << 16))) {
		struct n2_hash_req_ctx *rctx = FUNC1(req);
		struct n2_hash_ctx *ctx = FUNC4(tfm);

		FUNC2(&rctx->fallback_req, ctx->fallback_tfm);
		rctx->fallback_req.base.flags =
			req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
		rctx->fallback_req.nbytes = req->nbytes;
		rctx->fallback_req.src = req->src;
		rctx->fallback_req.result = req->result;

		return FUNC5(&rctx->fallback_req);
	}

	nbytes = FUNC8(req, &walk);

	cpu = FUNC9();
	qp = cpu_to_cwq[cpu];
	if (!qp)
		goto out;

	FUNC12(&qp->lock, flags);

	/* XXX can do better, improve this later by doing a by-hand scatterlist
	 * XXX walk, etc.
	 */
	ent = qp->q + qp->tail;

	ent->control = FUNC3(nbytes, auth_key_len, 0,
					 auth_type, digest_size,
					 false, true, false, false,
					 OPCODE_INPLACE_BIT |
					 OPCODE_AUTH_MAC);
	ent->src_addr = FUNC0(walk.data);
	ent->auth_key_addr = auth_key;
	ent->auth_iv_addr = FUNC0(hash_loc);
	ent->final_auth_state_addr = 0UL;
	ent->enc_key_addr = 0UL;
	ent->enc_iv_addr = 0UL;
	ent->dest_addr = FUNC0(hash_loc);

	nbytes = FUNC7(&walk, 0);
	while (nbytes > 0) {
		ent = FUNC14(qp, ent);

		ent->control = (nbytes - 1);
		ent->src_addr = FUNC0(walk.data);
		ent->auth_key_addr = 0UL;
		ent->auth_iv_addr = 0UL;
		ent->final_auth_state_addr = 0UL;
		ent->enc_key_addr = 0UL;
		ent->enc_iv_addr = 0UL;
		ent->dest_addr = 0UL;

		nbytes = FUNC7(&walk, 0);
	}
	ent->control |= CONTROL_END_OF_BLOCK;

	if (FUNC15(qp, ent) != HV_EOK)
		err = -EINVAL;
	else
		err = 0;

	FUNC13(&qp->lock, flags);

	if (!err)
		FUNC10(req->result, hash_loc, result_size);
out:
	FUNC11();

	return err;
}