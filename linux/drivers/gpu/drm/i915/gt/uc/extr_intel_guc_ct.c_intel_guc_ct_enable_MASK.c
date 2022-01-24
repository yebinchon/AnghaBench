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
struct intel_guc_ct_channel {scalar_t__ enabled; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 struct intel_guc* FUNC0 (struct intel_guc_ct*) ; 
 int FUNC1 (struct intel_guc*,struct intel_guc_ct_channel*) ; 

int FUNC2(struct intel_guc_ct *ct)
{
	struct intel_guc *guc = FUNC0(ct);
	struct intel_guc_ct_channel *ctch = &ct->host_channel;

	if (ctch->enabled)
		return 0;

	return FUNC1(guc, ctch);
}