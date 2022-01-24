#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct radeon_ps {int class; void* dclk; void* vclk; void* class2; void* caps; } ;
struct TYPE_3__ {struct radeon_ps* uvd_ps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct kv_ps {int dummy; } ;
struct _ATOM_PPLIB_NONCLOCK_INFO {int /*<<< orphan*/  ulDCLK; int /*<<< orphan*/  ulVCLK; int /*<<< orphan*/  usClassification2; int /*<<< orphan*/  usClassification; int /*<<< orphan*/  ulCapsAndSettings; } ;

/* Variables and functions */
 int ATOM_PPLIB_CLASSIFICATION_BOOT ; 
 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ; 
 scalar_t__ ATOM_PPLIB_NONCLOCKINFO_VER1 ; 
 struct kv_ps* FUNC0 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct kv_ps*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
					  struct radeon_ps *rps,
					  struct _ATOM_PPLIB_NONCLOCK_INFO *non_clock_info,
					  u8 table_rev)
{
	struct kv_ps *ps = FUNC0(rps);

	rps->caps = FUNC3(non_clock_info->ulCapsAndSettings);
	rps->class = FUNC2(non_clock_info->usClassification);
	rps->class2 = FUNC2(non_clock_info->usClassification2);

	if (ATOM_PPLIB_NONCLOCKINFO_VER1 < table_rev) {
		rps->vclk = FUNC3(non_clock_info->ulVCLK);
		rps->dclk = FUNC3(non_clock_info->ulDCLK);
	} else {
		rps->vclk = 0;
		rps->dclk = 0;
	}

	if (rps->class & ATOM_PPLIB_CLASSIFICATION_BOOT) {
		rdev->pm.dpm.boot_ps = rps;
		FUNC1(rdev, ps);
	}
	if (rps->class & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
		rdev->pm.dpm.uvd_ps = rps;
}