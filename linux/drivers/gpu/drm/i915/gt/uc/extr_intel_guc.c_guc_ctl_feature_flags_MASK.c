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
 int /*<<< orphan*/  GUC_CTL_DISABLE_SCHEDULER ; 
 int /*<<< orphan*/  FUNC0 (struct intel_guc*) ; 

__attribute__((used)) static u32 FUNC1(struct intel_guc *guc)
{
	u32 flags = 0;

	if (!FUNC0(guc))
		flags |= GUC_CTL_DISABLE_SCHEDULER;

	return flags;
}