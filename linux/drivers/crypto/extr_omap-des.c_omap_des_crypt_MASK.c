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
struct omap_des_reqctx {unsigned long mode; } ;
struct omap_des_dev {int dummy; } ;
struct omap_des_ctx {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DES_BLOCK_SIZE ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned long FLAGS_CBC ; 
 unsigned long FLAGS_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_des_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 struct omap_des_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*) ; 
 struct omap_des_dev* FUNC4 (struct omap_des_ctx*) ; 
 int FUNC5 (struct omap_des_dev*,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct ablkcipher_request *req, unsigned long mode)
{
	struct omap_des_ctx *ctx = FUNC2(
			FUNC3(req));
	struct omap_des_reqctx *rctx = FUNC1(req);
	struct omap_des_dev *dd;

	FUNC6("nbytes: %d, enc: %d, cbc: %d\n", req->nbytes,
		 !!(mode & FLAGS_ENCRYPT),
		 !!(mode & FLAGS_CBC));

	if (!FUNC0(req->nbytes, DES_BLOCK_SIZE)) {
		FUNC7("request size is not exact amount of DES blocks\n");
		return -EINVAL;
	}

	dd = FUNC4(ctx);
	if (!dd)
		return -ENODEV;

	rctx->mode = mode;

	return FUNC5(dd, req);
}