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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_PWR_GATING_CNTL ; 
 int /*<<< orphan*/  DYN_PWR_DOWN_EN ; 
 int /*<<< orphan*/  GB_ADDR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, bool enable)
{
	if (enable)
		FUNC1(CG_PWR_GATING_CNTL, DYN_PWR_DOWN_EN, ~DYN_PWR_DOWN_EN);
	else {
		FUNC1(CG_PWR_GATING_CNTL, 0, ~DYN_PWR_DOWN_EN);
		FUNC0(GB_ADDR_CONFIG);
	}
}