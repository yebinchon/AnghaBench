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
 int /*<<< orphan*/  ENABLE_FV_THROT_IO ; 
 int /*<<< orphan*/  FVTHROT_CNTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct radeon_device *rdev, bool enable)
{
	if (enable)
		FUNC0(FVTHROT_CNTRL_REG, ENABLE_FV_THROT_IO, ~ENABLE_FV_THROT_IO);
	else
		FUNC0(FVTHROT_CNTRL_REG, 0, ~ENABLE_FV_THROT_IO);
}