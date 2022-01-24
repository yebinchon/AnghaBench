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
struct omap_sham_reqctx {int /*<<< orphan*/  flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FLAGS_FINUP ; 
 struct omap_sham_reqctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct omap_sham_reqctx *ctx = FUNC1(req);
	int err1, err2;

	ctx->flags |= FUNC0(FLAGS_FINUP);

	err1 = FUNC3(req);
	if (err1 == -EINPROGRESS || err1 == -EBUSY)
		return err1;
	/*
	 * final() has to be always called to cleanup resources
	 * even if udpate() failed, except EINPROGRESS
	 */
	err2 = FUNC2(req);

	return err1 ?: err2;
}