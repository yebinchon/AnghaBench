#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  guc; } ;
struct intel_gt {TYPE_1__ uc; } ;

/* Variables and functions */
 scalar_t__ const OTHER_GTPM_INSTANCE ; 
 scalar_t__ const OTHER_GUC_INSTANCE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__ const,int /*<<< orphan*/  const) ; 
 void FUNC1 (struct intel_gt*,int /*<<< orphan*/  const) ; 
 void FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC3(struct intel_gt *gt, const u8 instance,
			const u16 iir)
{
	if (instance == OTHER_GUC_INSTANCE)
		return FUNC2(&gt->uc.guc, iir);

	if (instance == OTHER_GTPM_INSTANCE)
		return FUNC1(gt, iir);

	FUNC0(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
		  instance, iir);
}