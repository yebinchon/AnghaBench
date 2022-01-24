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
typedef  int u32 ;
struct intel_guc {int dummy; } ;
struct guc_ct_buffer_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct intel_guc*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct intel_guc *guc,
					 u32 desc_addr,
					 u32 type)
{
	u32 action[] = {
		INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER,
		desc_addr,
		sizeof(struct guc_ct_buffer_desc),
		type
	};
	int err;

	/* Can't use generic send(), CT registration must go over MMIO */
	err = FUNC3(guc, action, FUNC0(action), NULL, 0);
	if (err)
		FUNC1("CT: register %s buffer failed; err=%d\n",
			  FUNC2(type), err);
	return err;
}