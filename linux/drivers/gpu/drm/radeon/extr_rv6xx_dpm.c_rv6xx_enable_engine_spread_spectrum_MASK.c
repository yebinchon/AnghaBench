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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CG_SPLL_SPREAD_SPECTRUM_LOW ; 
 int /*<<< orphan*/  SSEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct radeon_device *rdev,
						u32 index, bool enable)
{
	if (enable)
		FUNC0(CG_SPLL_SPREAD_SPECTRUM_LOW + (index * 4),
			 SSEN, ~SSEN);
	else
		FUNC0(CG_SPLL_SPREAD_SPECTRUM_LOW + (index * 4),
			 0, ~SSEN);
}