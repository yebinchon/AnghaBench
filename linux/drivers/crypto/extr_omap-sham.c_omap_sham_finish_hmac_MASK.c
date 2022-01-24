#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct omap_sham_hmac_ctx {int /*<<< orphan*/  opad; int /*<<< orphan*/  shash; } ;
struct omap_sham_ctx {struct omap_sham_hmac_ctx* base; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {int /*<<< orphan*/  result; TYPE_1__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct omap_sham_ctx* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* shash ; 

__attribute__((used)) static int FUNC7(struct ahash_request *req)
{
	struct omap_sham_ctx *tctx = FUNC6(req->base.tfm);
	struct omap_sham_hmac_ctx *bctx = tctx->base;
	int bs = FUNC1(bctx->shash);
	int ds = FUNC2(bctx->shash);
	FUNC0(shash, bctx->shash);

	shash->tfm = bctx->shash;

	return FUNC4(shash) ?:
	       FUNC5(shash, bctx->opad, bs) ?:
	       FUNC3(shash, req->result, ds, req->result);
}