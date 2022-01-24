#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {scalar_t__ ctr_nonce; } ;
struct aead_request {scalar_t__ iv; } ;
struct aead_req_ctx {int /*<<< orphan*/  assoclen; scalar_t__ ctr_iv; } ;

/* Variables and functions */
 scalar_t__ GCM_BLOCK_RFC4_IV_OFFSET ; 
 scalar_t__ GCM_BLOCK_RFC4_IV_SIZE ; 
 scalar_t__ GCM_BLOCK_RFC4_NONCE_OFFSET ; 
 scalar_t__ GCM_BLOCK_RFC4_NONCE_SIZE ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct aead_request *req)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct aead_req_ctx *areq_ctx = FUNC0(req);

	FUNC3(areq_ctx->ctr_iv + GCM_BLOCK_RFC4_NONCE_OFFSET,
	       ctx->ctr_nonce, GCM_BLOCK_RFC4_NONCE_SIZE);
	FUNC3(areq_ctx->ctr_iv + GCM_BLOCK_RFC4_IV_OFFSET, req->iv,
	       GCM_BLOCK_RFC4_IV_SIZE);
	req->iv = areq_ctx->ctr_iv;
	areq_ctx->assoclen -= GCM_BLOCK_RFC4_IV_SIZE;
}