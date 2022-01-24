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
struct TYPE_2__ {int /*<<< orphan*/  pub; } ;
struct rsa_edesc {int /*<<< orphan*/  hw_desc; TYPE_1__ pdb; } ;
struct device {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {scalar_t__ n_sz; int /*<<< orphan*/  e; int /*<<< orphan*/  n; } ;
struct caam_rsa_ctx {struct device* dev; struct caam_rsa_key key; } ;
struct akcipher_request {scalar_t__ dst_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_RSA_PUB_LEN ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (struct rsa_edesc*) ; 
 int FUNC1 (struct rsa_edesc*) ; 
 struct caam_rsa_ctx* FUNC2 (struct crypto_akcipher*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct akcipher_request*) ; 
 struct crypto_akcipher* FUNC4 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rsa_edesc*) ; 
 struct rsa_edesc* FUNC8 (struct akcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct rsa_edesc*,struct akcipher_request*) ; 
 int /*<<< orphan*/  rsa_pub_done ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct rsa_edesc*,struct akcipher_request*) ; 
 int FUNC11 (struct akcipher_request*,struct rsa_edesc*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC4(req);
	struct caam_rsa_ctx *ctx = FUNC2(tfm);
	struct caam_rsa_key *key = &ctx->key;
	struct device *jrdev = ctx->dev;
	struct rsa_edesc *edesc;
	int ret;

	if (FUNC12(!key->n || !key->e))
		return -EINVAL;

	if (req->dst_len < key->n_sz) {
		req->dst_len = key->n_sz;
		FUNC5(jrdev, "Output buffer length less than parameter n\n");
		return -EOVERFLOW;
	}

	/* Allocate extended descriptor */
	edesc = FUNC8(req, DESC_RSA_PUB_LEN);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	/* Set RSA Encrypt Protocol Data Block */
	ret = FUNC11(req, edesc);
	if (ret)
		goto init_fail;

	/* Initialize Job Descriptor */
	FUNC6(edesc->hw_desc, &edesc->pdb.pub);

	ret = FUNC3(jrdev, edesc->hw_desc, rsa_pub_done, req);
	if (!ret)
		return -EINPROGRESS;

	FUNC10(jrdev, edesc, req);

init_fail:
	FUNC9(jrdev, edesc, req);
	FUNC7(edesc);
	return ret;
}