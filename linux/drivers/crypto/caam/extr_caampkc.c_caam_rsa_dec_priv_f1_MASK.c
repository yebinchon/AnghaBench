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
struct TYPE_2__ {int /*<<< orphan*/  priv_f1; } ;
struct rsa_edesc {int /*<<< orphan*/  hw_desc; TYPE_1__ pdb; } ;
struct device {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_ctx {struct device* dev; } ;
struct akcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_RSA_PRIV_F1_LEN ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct rsa_edesc*) ; 
 int FUNC1 (struct rsa_edesc*) ; 
 struct caam_rsa_ctx* FUNC2 (struct crypto_akcipher*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct akcipher_request*) ; 
 struct crypto_akcipher* FUNC4 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rsa_edesc*) ; 
 struct rsa_edesc* FUNC7 (struct akcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct rsa_edesc*,struct akcipher_request*) ; 
 int /*<<< orphan*/  rsa_priv_f1_done ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct rsa_edesc*,struct akcipher_request*) ; 
 int FUNC10 (struct akcipher_request*,struct rsa_edesc*) ; 

__attribute__((used)) static int FUNC11(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC4(req);
	struct caam_rsa_ctx *ctx = FUNC2(tfm);
	struct device *jrdev = ctx->dev;
	struct rsa_edesc *edesc;
	int ret;

	/* Allocate extended descriptor */
	edesc = FUNC7(req, DESC_RSA_PRIV_F1_LEN);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	/* Set RSA Decrypt Protocol Data Block - Private Key Form #1 */
	ret = FUNC10(req, edesc);
	if (ret)
		goto init_fail;

	/* Initialize Job Descriptor */
	FUNC5(edesc->hw_desc, &edesc->pdb.priv_f1);

	ret = FUNC3(jrdev, edesc->hw_desc, rsa_priv_f1_done, req);
	if (!ret)
		return -EINPROGRESS;

	FUNC9(jrdev, edesc, req);

init_fail:
	FUNC8(jrdev, edesc, req);
	FUNC6(edesc);
	return ret;
}