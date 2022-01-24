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
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {int /*<<< orphan*/  drvdata; } ;
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  assoclen; } ;
struct aead_req_ctx {int plaintext_authenticate_only; int is_gcm4543; int /*<<< orphan*/  backup_iv; int /*<<< orphan*/  assoclen; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_DECRYPT ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 int FUNC1 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_req_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct aead_request*) ; 

__attribute__((used)) static int FUNC9(struct aead_request *req)
{
	/* Very similar to cc_aead_decrypt() above. */

	struct crypto_aead *tfm = FUNC4(req);
	struct cc_aead_ctx *ctx = FUNC3(tfm);
	struct device *dev = FUNC6(ctx->drvdata);
	struct aead_req_ctx *areq_ctx = FUNC0(req);
	int rc = -EINVAL;

	if (!FUNC8(req)) {
		FUNC5(dev, "invalid Assoclen:%u\n", req->assoclen);
		goto out;
	}

	FUNC7(areq_ctx, 0, sizeof(*areq_ctx));

	/* No generated IV required */
	areq_ctx->backup_iv = req->iv;
	areq_ctx->assoclen = req->assoclen;
	areq_ctx->plaintext_authenticate_only = false;

	FUNC2(req);
	areq_ctx->is_gcm4543 = true;

	rc = FUNC1(req, DRV_CRYPTO_DIRECTION_DECRYPT);
	if (rc != -EINPROGRESS && rc != -EBUSY)
		req->iv = areq_ctx->backup_iv;
out:
	return rc;
}