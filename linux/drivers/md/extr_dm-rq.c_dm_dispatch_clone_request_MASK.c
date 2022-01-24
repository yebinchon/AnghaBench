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
struct request {int /*<<< orphan*/  q; int /*<<< orphan*/  start_time_ns; int /*<<< orphan*/  rq_flags; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ BLK_STS_DEV_RESOURCE ; 
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  RQF_IO_STAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct request*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static blk_status_t FUNC4(struct request *clone, struct request *rq)
{
	blk_status_t r;

	if (FUNC1(clone->q))
		clone->rq_flags |= RQF_IO_STAT;

	clone->start_time_ns = FUNC3();
	r = FUNC0(clone->q, clone);
	if (r != BLK_STS_OK && r != BLK_STS_RESOURCE && r != BLK_STS_DEV_RESOURCE)
		/* must complete clone in terms of original request */
		FUNC2(rq, r);
	return r;
}