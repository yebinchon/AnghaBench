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
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  GLOBAL_PWRMGT_EN ; 
 int /*<<< orphan*/  MPLL_PWRMGT_OFF ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  SCLK_PWRMGT_OFF ; 
 int /*<<< orphan*/  TCI_MCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct radeon_device *rdev)
{
	FUNC0(SCLK_PWRMGT_CNTL, 0, ~SCLK_PWRMGT_OFF);

	FUNC0(TCI_MCLK_PWRMGT_CNTL, 0, ~MPLL_PWRMGT_OFF);

	FUNC0(GENERAL_PWRMGT, GLOBAL_PWRMGT_EN, ~GLOBAL_PWRMGT_EN);
}