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
struct trinity_power_info {int min_sclk_did; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_SMU_MISC_FUSES ; 
 int MinSClkDid_MASK ; 
 int MinSClkDid_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct trinity_power_info* FUNC1 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC1(rdev);

	pi->min_sclk_did =
		(FUNC0(CC_SMU_MISC_FUSES) & MinSClkDid_MASK) >> MinSClkDid_SHIFT;
}