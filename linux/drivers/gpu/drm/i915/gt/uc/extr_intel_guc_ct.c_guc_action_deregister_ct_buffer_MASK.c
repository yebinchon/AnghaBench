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
typedef  int /*<<< orphan*/  u32 ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_guc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct intel_guc *guc,
					   u32 owner,
					   u32 type)
{
	u32 action[] = {
		INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER,
		owner,
		type
	};
	int err;

	/* Can't use generic send(), CT deregistration must go over MMIO */
	err = FUNC3(guc, action, FUNC0(action), NULL, 0);
	if (err)
		FUNC1("CT: deregister %s buffer failed; owner=%d err=%d\n",
			  FUNC2(type), owner, err);
	return err;
}