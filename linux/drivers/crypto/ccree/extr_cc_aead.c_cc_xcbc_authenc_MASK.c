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
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int /*<<< orphan*/  flow_mode; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {int op_type; } ;
struct aead_req_ctx {scalar_t__ is_single_pass; TYPE_1__ gen_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIN_HASH ; 
 int DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,struct cc_hw_desc*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct cc_hw_desc*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,unsigned int,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_request*,struct cc_hw_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct aead_request*,struct cc_hw_desc*,unsigned int*) ; 
 struct cc_aead_ctx* FUNC9 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC10 (struct aead_request*) ; 

__attribute__((used)) static void
FUNC11(struct aead_request *req, struct cc_hw_desc desc[],
		unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC10(req);
	struct cc_aead_ctx *ctx = FUNC9(tfm);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	int direct = req_ctx->gen_ctx.op_type;
	unsigned int data_flow_mode =
		FUNC1(direct, ctx->flow_mode,
				 req_ctx->is_single_pass);

	if (req_ctx->is_single_pass) {
		/**
		 * Single-pass flow
		 */
		FUNC8(req, desc, seq_size);
		FUNC7(req, desc, seq_size);
		FUNC6(req, desc, seq_size);
		FUNC4(req, data_flow_mode, desc, seq_size);
		FUNC5(req, desc, seq_size);
		return;
	}

	/**
	 * Double-pass flow
	 * Fallback for unsupported single-pass modes,
	 * i.e. using assoc. data of non-word-multiple
	 */
	if (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) {
		/* encrypt first.. */
		FUNC3(req, desc, seq_size, data_flow_mode);
		/* authenc after.. */
		FUNC8(req, desc, seq_size);
		FUNC2(req, DIN_HASH, desc, seq_size, direct);
		FUNC5(req, desc, seq_size);
	} else { /*DECRYPT*/
		/* authenc first.. */
		FUNC8(req, desc, seq_size);
		FUNC2(req, DIN_HASH, desc, seq_size, direct);
		/* decrypt after..*/
		FUNC3(req, desc, seq_size, data_flow_mode);
		/* read the digest result with setting the completion bit
		 * must be after the cipher operation
		 */
		FUNC5(req, desc, seq_size);
	}
}