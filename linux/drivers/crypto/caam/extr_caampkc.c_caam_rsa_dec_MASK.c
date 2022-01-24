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
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {scalar_t__ n_sz; scalar_t__ priv_form; int /*<<< orphan*/  d; int /*<<< orphan*/  n; } ;
struct caam_rsa_ctx {int /*<<< orphan*/  dev; struct caam_rsa_key key; } ;
struct akcipher_request {scalar_t__ dst_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 scalar_t__ FORM2 ; 
 scalar_t__ FORM3 ; 
 struct caam_rsa_ctx* FUNC0 (struct crypto_akcipher*) ; 
 int FUNC1 (struct akcipher_request*) ; 
 int FUNC2 (struct akcipher_request*) ; 
 int FUNC3 (struct akcipher_request*) ; 
 struct crypto_akcipher* FUNC4 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC4(req);
	struct caam_rsa_ctx *ctx = FUNC0(tfm);
	struct caam_rsa_key *key = &ctx->key;
	int ret;

	if (FUNC6(!key->n || !key->d))
		return -EINVAL;

	if (req->dst_len < key->n_sz) {
		req->dst_len = key->n_sz;
		FUNC5(ctx->dev, "Output buffer length less than parameter n\n");
		return -EOVERFLOW;
	}

	if (key->priv_form == FORM3)
		ret = FUNC3(req);
	else if (key->priv_form == FORM2)
		ret = FUNC2(req);
	else
		ret = FUNC1(req);

	return ret;
}