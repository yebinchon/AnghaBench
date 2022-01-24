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
struct intel_guc {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  awake; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*) ; 
 struct intel_gt* FUNC3 (struct intel_guc*) ; 

void FUNC4(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC3(guc);

	FUNC0(gt->awake); /* GT should be parked first */

	FUNC2(gt);
	FUNC1(guc);
}