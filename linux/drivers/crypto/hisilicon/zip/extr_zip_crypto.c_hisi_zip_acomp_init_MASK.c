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
struct hisi_zip_ctx {int dummy; } ;
struct crypto_acomp {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct hisi_zip_ctx* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hisi_zip_acomp_cb ; 
 int FUNC3 (struct hisi_zip_ctx*) ; 
 int FUNC4 (struct hisi_zip_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_zip_ctx*) ; 
 int FUNC6 (struct hisi_zip_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_zip_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct hisi_zip_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct crypto_acomp *tfm)
{
	const char *alg_name = FUNC1(&tfm->base);
	struct hisi_zip_ctx *ctx = FUNC2(&tfm->base);
	int ret;

	ret = FUNC6(ctx, FUNC0(alg_name));
	if (ret)
		return ret;

	ret = FUNC3(ctx);
	if (ret)
		goto err_ctx_exit;

	ret = FUNC4(ctx);
	if (ret)
		goto err_release_req_q;

	FUNC8(ctx, hisi_zip_acomp_cb);

	return 0;

err_release_req_q:
	FUNC7(ctx);
err_ctx_exit:
	FUNC5(ctx);
	return ret;
}