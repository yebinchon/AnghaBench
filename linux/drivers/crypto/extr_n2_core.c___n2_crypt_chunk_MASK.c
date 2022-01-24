#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spu_queue {int dummy; } ;
struct n2_crypto_chunk {int arr_len; unsigned long dest_paddr; unsigned long iv_paddr; TYPE_1__* arr; } ;
struct n2_cipher_context {int /*<<< orphan*/  key; int /*<<< orphan*/  enc_type; } ;
struct cwq_initial_entry {unsigned long src_addr; unsigned long auth_key_addr; unsigned long auth_iv_addr; unsigned long final_auth_state_addr; unsigned long enc_key_addr; unsigned long enc_iv_addr; unsigned long dest_addr; scalar_t__ control; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {unsigned long src_paddr; scalar_t__ src_len; } ;

/* Variables and functions */
 scalar_t__ CONTROL_END_OF_BLOCK ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ HV_EOK ; 
 int OPCODE_ENCRYPT ; 
 int OPCODE_INPLACE_BIT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 struct n2_cipher_context* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct cwq_initial_entry* FUNC4 (struct spu_queue*,int) ; 
 struct cwq_initial_entry* FUNC5 (struct spu_queue*,struct cwq_initial_entry*) ; 
 scalar_t__ FUNC6 (struct spu_queue*,struct cwq_initial_entry*) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm, struct n2_crypto_chunk *cp,
			    struct spu_queue *qp, bool encrypt)
{
	struct n2_cipher_context *ctx = FUNC2(tfm);
	struct cwq_initial_entry *ent;
	bool in_place;
	int i;

	ent = FUNC4(qp, cp->arr_len);
	if (!ent) {
		FUNC3("queue_alloc() of %d fails\n",
			cp->arr_len);
		return -EBUSY;
	}

	in_place = (cp->dest_paddr == cp->arr[0].src_paddr);

	ent->control = FUNC1(cp->arr[0].src_len,
					 0, ctx->enc_type, 0, 0,
					 false, true, false, encrypt,
					 OPCODE_ENCRYPT |
					 (in_place ? OPCODE_INPLACE_BIT : 0));
	ent->src_addr = cp->arr[0].src_paddr;
	ent->auth_key_addr = 0UL;
	ent->auth_iv_addr = 0UL;
	ent->final_auth_state_addr = 0UL;
	ent->enc_key_addr = FUNC0(&ctx->key);
	ent->enc_iv_addr = cp->iv_paddr;
	ent->dest_addr = (in_place ? 0UL : cp->dest_paddr);

	for (i = 1; i < cp->arr_len; i++) {
		ent = FUNC5(qp, ent);

		ent->control = cp->arr[i].src_len - 1;
		ent->src_addr = cp->arr[i].src_paddr;
		ent->auth_key_addr = 0UL;
		ent->auth_iv_addr = 0UL;
		ent->final_auth_state_addr = 0UL;
		ent->enc_key_addr = 0UL;
		ent->enc_iv_addr = 0UL;
		ent->dest_addr = 0UL;
	}
	ent->control |= CONTROL_END_OF_BLOCK;

	return (FUNC6(qp, ent) != HV_EOK) ? -EINVAL : 0;
}