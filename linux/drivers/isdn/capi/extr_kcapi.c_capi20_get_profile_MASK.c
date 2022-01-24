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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct capi_profile {int /*<<< orphan*/  ncontroller; } ;
struct capi_ctr {scalar_t__ state; int /*<<< orphan*/  profile; } ;

/* Variables and functions */
 scalar_t__ CAPI_CTR_RUNNING ; 
 int /*<<< orphan*/  CAPI_NOERROR ; 
 int /*<<< orphan*/  CAPI_REGNOTINSTALLED ; 
 int /*<<< orphan*/  capi_controller_lock ; 
 struct capi_ctr* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct capi_profile*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ncontrollers ; 

u16 FUNC4(u32 contr, struct capi_profile *profp)
{
	struct capi_ctr *ctr;
	u16 ret;

	if (contr == 0) {
		profp->ncontroller = ncontrollers;
		return CAPI_NOERROR;
	}

	FUNC2(&capi_controller_lock);

	ctr = FUNC0(contr);
	if (ctr && ctr->state == CAPI_CTR_RUNNING) {
		FUNC1(profp, &ctr->profile, sizeof(struct capi_profile));
		ret = CAPI_NOERROR;
	} else
		ret = CAPI_REGNOTINSTALLED;

	FUNC3(&capi_controller_lock);
	return ret;
}