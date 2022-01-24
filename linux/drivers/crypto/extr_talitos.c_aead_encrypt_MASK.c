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
struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int desc_hdr_template; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int DESC_HDR_MODE0_ENCRYPT ; 
 scalar_t__ FUNC0 (struct talitos_edesc*) ; 
 int FUNC1 (struct talitos_edesc*) ; 
 struct talitos_edesc* FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct talitos_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct talitos_edesc*,struct aead_request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipsec_esp_encrypt_done ; 

__attribute__((used)) static int FUNC6(struct aead_request *req)
{
	struct crypto_aead *authenc = FUNC4(req);
	struct talitos_ctx *ctx = FUNC3(authenc);
	struct talitos_edesc *edesc;

	/* allocate extended descriptor */
	edesc = FUNC2(req, req->iv, 0, true);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	/* set encrypt */
	edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

	return FUNC5(edesc, req, true, ipsec_esp_encrypt_done);
}