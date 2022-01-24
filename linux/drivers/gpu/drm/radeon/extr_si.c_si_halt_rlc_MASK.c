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
 int /*<<< orphan*/  RLC_CNTL ; 
 int RLC_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static u32 FUNC3(struct radeon_device *rdev)
{
	u32 data, orig;

	orig = data = FUNC0(RLC_CNTL);

	if (data & RLC_ENABLE) {
		data &= ~RLC_ENABLE;
		FUNC1(RLC_CNTL, data);

		FUNC2(rdev);
	}

	return orig;
}