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
struct intel_guc_ct {int dummy; } ;
struct intel_guc {struct intel_guc_ct ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_guc_ct*) ; 

void FUNC1(struct intel_guc *guc)
{
	struct intel_guc_ct *ct = &guc->ct;

	FUNC0(ct);
}