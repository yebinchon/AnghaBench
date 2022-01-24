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
struct intel_guc_ct_channel {int /*<<< orphan*/  vma; int /*<<< orphan*/  owner; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct intel_guc* FUNC2 (struct intel_guc_ct*) ; 
 int FUNC3 (struct intel_guc*,struct intel_guc_ct_channel*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct intel_guc_ct *ct)
{
	struct intel_guc *guc = FUNC2(ct);
	struct intel_guc_ct_channel *ctch = &ct->host_channel;
	int err;

	err = FUNC3(guc, ctch);
	if (FUNC4(err)) {
		FUNC0("CT: can't open channel %d; err=%d\n",
			  ctch->owner, err);
		return err;
	}

	FUNC1(!ctch->vma);
	return 0;
}