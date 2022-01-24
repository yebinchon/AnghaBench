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
struct kfd_dbgmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kfd_dbgmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_dbgmgr*) ; 

void FUNC2(struct kfd_dbgmgr *pmgr)
{
	if (pmgr) {
		FUNC0(pmgr);
		FUNC1(pmgr);
	}
}