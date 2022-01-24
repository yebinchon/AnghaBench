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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {scalar_t__ keylen; } ;
struct caam_ctx {TYPE_1__ cdata; scalar_t__ key; } ;
struct aead_request {scalar_t__ iv; scalar_t__ cryptlen; scalar_t__ assoclen; } ;
struct aead_edesc {int /*<<< orphan*/ * hw_desc; } ;

/* Variables and functions */
 unsigned int CMD_FIFO_LOAD ; 
 unsigned int FIFOLD_CLASS_CLASS1 ; 
 unsigned int FIFOLD_TYPE_FLUSH1 ; 
 unsigned int FIFOLD_TYPE_IV ; 
 unsigned int FIFOLD_TYPE_LAST1 ; 
 unsigned int GCM_AES_IV_SIZE ; 
 int /*<<< orphan*/  IMM ; 
 unsigned int IMMEDIATE ; 
 int /*<<< orphan*/  REG3 ; 
 int /*<<< orphan*/  ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct caam_ctx* FUNC3 (struct crypto_aead*) ; 
 unsigned int FUNC4 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC5 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*,struct aead_edesc*,int,int) ; 

__attribute__((used)) static void FUNC7(struct aead_request *req,
			 struct aead_edesc *edesc,
			 bool all_contig, bool encrypt)
{
	struct crypto_aead *aead = FUNC5(req);
	struct caam_ctx *ctx = FUNC3(aead);
	unsigned int ivsize = FUNC4(aead);
	u32 *desc = edesc->hw_desc;
	bool generic_gcm = (ivsize == GCM_AES_IV_SIZE);
	unsigned int last;

	FUNC6(req, edesc, all_contig, encrypt);
	FUNC2(desc, REG3, ZERO, IMM, req->assoclen);

	/* BUG This should not be specific to generic GCM. */
	last = 0;
	if (encrypt && generic_gcm && !(req->assoclen + req->cryptlen))
		last = FIFOLD_TYPE_LAST1;

	/* Read GCM IV */
	FUNC0(desc, CMD_FIFO_LOAD | FIFOLD_CLASS_CLASS1 | IMMEDIATE |
			 FIFOLD_TYPE_IV | FIFOLD_TYPE_FLUSH1 | GCM_AES_IV_SIZE | last);
	/* Append Salt */
	if (!generic_gcm)
		FUNC1(desc, ctx->key + ctx->cdata.keylen, 4);
	/* Append IV */
	FUNC1(desc, req->iv, ivsize);
	/* End of blank commands */
}