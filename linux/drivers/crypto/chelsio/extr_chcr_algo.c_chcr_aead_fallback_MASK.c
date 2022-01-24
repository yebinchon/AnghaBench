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
struct chcr_aead_ctx {int /*<<< orphan*/  sw_cipher; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct aead_request* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct aead_request*) ; 
 int FUNC8 (struct aead_request*) ; 
 struct crypto_aead* FUNC9 (struct aead_request*) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req, unsigned short op_type)
{
	struct crypto_aead *tfm = FUNC9(req);
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(tfm));
	struct aead_request *subreq = FUNC2(req);

	FUNC6(subreq, aeadctx->sw_cipher);
	FUNC4(subreq, req->base.flags,
				  req->base.complete, req->base.data);
	FUNC5(subreq, req->src, req->dst, req->cryptlen,
				 req->iv);
	FUNC3(subreq, req->assoclen);
	return op_type ? FUNC7(subreq) :
		FUNC8(subreq);
}