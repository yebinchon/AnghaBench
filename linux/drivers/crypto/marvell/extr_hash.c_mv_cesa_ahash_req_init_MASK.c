#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mv_cesa_ahash_req {scalar_t__ src_nents; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {TYPE_1__* caps; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ has_tdma; } ;

/* Variables and functions */
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 TYPE_2__* cesa_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req, bool *cached)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);

	creq->src_nents = FUNC4(req->src, req->nbytes);
	if (creq->src_nents < 0) {
		FUNC1(cesa_dev->dev, "Invalid number of src SG");
		return creq->src_nents;
	}

	*cached = FUNC2(req);

	if (*cached)
		return 0;

	if (cesa_dev->caps->has_tdma)
		return FUNC3(req);
	else
		return 0;
}