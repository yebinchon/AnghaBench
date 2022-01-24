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
typedef  int /*<<< orphan*/  PPSMC_Msg ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_HasDisplay ; 
 int /*<<< orphan*/  PPSMC_MSG_NoDisplay ; 
 scalar_t__ PPSMC_Result_OK ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct radeon_device *rdev,
					bool has_display)
{
	PPSMC_Msg msg = has_display ? PPSMC_MSG_HasDisplay : PPSMC_MSG_NoDisplay;

	return (FUNC0(rdev, msg) == PPSMC_Result_OK) ?  0 : -EINVAL;
}