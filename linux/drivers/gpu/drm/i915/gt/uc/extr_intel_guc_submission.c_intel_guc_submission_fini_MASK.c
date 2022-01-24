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
struct intel_guc {scalar_t__ stage_desc_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 

void FUNC4(struct intel_guc *guc)
{
	FUNC1(guc);
	FUNC0(!FUNC3(guc));

	if (guc->stage_desc_pool)
		FUNC2(guc);
}