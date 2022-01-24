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
struct TYPE_4__ {void* reg_safe_bm_size; void* reg_safe_bm; } ;
struct TYPE_3__ {TYPE_2__ r100; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ config; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ CHIP_R200 ; 
 void* r100_reg_safe_bm ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 void* rn50_reg_safe_bm ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	if (FUNC1(rdev)) {
		rdev->config.r100.reg_safe_bm = rn50_reg_safe_bm;
		rdev->config.r100.reg_safe_bm_size = FUNC0(rn50_reg_safe_bm);
	} else if (rdev->family < CHIP_R200) {
		rdev->config.r100.reg_safe_bm = r100_reg_safe_bm;
		rdev->config.r100.reg_safe_bm_size = FUNC0(r100_reg_safe_bm);
	} else {
		FUNC2(rdev);
	}
}