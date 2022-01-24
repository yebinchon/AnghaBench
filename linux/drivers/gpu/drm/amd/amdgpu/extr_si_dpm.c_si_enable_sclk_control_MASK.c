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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  SCLK_PWRMGT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev, bool enable)
{
	if (enable)
		FUNC0(SCLK_PWRMGT_CNTL, 0, ~SCLK_PWRMGT_OFF);
	else
		FUNC0(SCLK_PWRMGT_CNTL, SCLK_PWRMGT_OFF, ~SCLK_PWRMGT_OFF);

}