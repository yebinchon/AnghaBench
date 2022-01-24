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
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(struct radeon_device *rdev,
				      u32 reg, u32 mask,
				      bool enable, const char *name, unsigned n)
{
	u32 tmp = FUNC1(reg);

	/* Interrupt state didn't change */
	if (!!(tmp & mask) == enable)
		return;

	if (enable) {
		FUNC0("%s%d interrupts enabled\n", name, n);
		FUNC2(reg, tmp |= mask);
	} else {
		FUNC0("%s%d interrupts disabled\n", name, n);
		FUNC2(reg, tmp & ~mask);
	}
}