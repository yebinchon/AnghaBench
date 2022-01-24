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
struct qce_sha_reqctx {int first_blk; int last_blk; int /*<<< orphan*/  digest; int /*<<< orphan*/  flags; } ;
struct qce_alg_template {int /*<<< orphan*/  alg_flags; int /*<<< orphan*/ * std_iv; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 struct qce_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qce_sha_reqctx*,int /*<<< orphan*/ ,int) ; 
 struct qce_alg_template* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct qce_sha_reqctx *rctx = FUNC0(req);
	struct qce_alg_template *tmpl = FUNC3(req->base.tfm);
	const u32 *std_iv = tmpl->std_iv;

	FUNC2(rctx, 0, sizeof(*rctx));
	rctx->first_blk = true;
	rctx->last_blk = false;
	rctx->flags = tmpl->alg_flags;
	FUNC1(rctx->digest, std_iv, sizeof(rctx->digest));

	return 0;
}