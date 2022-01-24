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
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_mw {TYPE_2__* device; struct ib_pd* pd; } ;
struct TYPE_3__ {int (* dealloc_mw ) (struct ib_mw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ib_mw*) ; 

int FUNC2(struct ib_mw *mw)
{
	struct ib_pd *pd = mw->pd;
	int ret;

	ret = mw->device->ops.dealloc_mw(mw);
	if (!ret)
		FUNC0(&pd->usecnt);
	return ret;
}