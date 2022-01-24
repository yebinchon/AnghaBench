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
 int /*<<< orphan*/  MPLL_CNTL_MODE ; 
 int /*<<< orphan*/  SS_SSEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct radeon_device *rdev,
				       bool enable)
{
	if (enable)
		FUNC0(MPLL_CNTL_MODE, SS_SSEN, ~SS_SSEN);
	else
		FUNC0(MPLL_CNTL_MODE, 0, ~SS_SSEN);
}