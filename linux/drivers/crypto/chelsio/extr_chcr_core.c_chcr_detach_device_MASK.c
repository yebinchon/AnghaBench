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
struct chcr_dev {scalar_t__ state; int /*<<< orphan*/  detach_comp; int /*<<< orphan*/  detach_work; int /*<<< orphan*/  inflight; } ;
struct uld_ctx {struct chcr_dev dev; } ;

/* Variables and functions */
 scalar_t__ CHCR_DETACH ; 
 int /*<<< orphan*/  WQ_DETACH_TM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uld_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uld_ctx *u_ctx)
{
	struct chcr_dev *dev = &u_ctx->dev;

	if (dev->state == CHCR_DETACH) {
		FUNC2("Detached Event received for already detach device\n");
		return;
	}
	dev->state = CHCR_DETACH;
	if (FUNC0(&dev->inflight) != 0) {
		FUNC3(&dev->detach_work, WQ_DETACH_TM);
		FUNC4(&dev->detach_comp);
	}

	// Move u_ctx to inactive_dev list
	FUNC1(u_ctx);
}