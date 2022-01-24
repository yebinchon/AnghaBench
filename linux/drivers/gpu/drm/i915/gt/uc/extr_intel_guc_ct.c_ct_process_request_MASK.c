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
struct intel_guc_ct {int dummy; } ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int const*) ; 
#define  INTEL_GUC_ACTION_DEFAULT 128 
 struct intel_guc* FUNC2 (struct intel_guc_ct*) ; 
 int FUNC3 (struct intel_guc*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct intel_guc_ct *ct,
			       u32 action, u32 len, const u32 *payload)
{
	struct intel_guc *guc = FUNC2(ct);
	int ret;

	FUNC0("CT: request %x %*ph\n", action, 4 * len, payload);

	switch (action) {
	case INTEL_GUC_ACTION_DEFAULT:
		ret = FUNC3(guc, payload, len);
		if (FUNC4(ret))
			goto fail_unexpected;
		break;

	default:
fail_unexpected:
		FUNC1("CT: unexpected request %x %*ph\n",
			  action, 4 * len, payload);
		break;
	}
}