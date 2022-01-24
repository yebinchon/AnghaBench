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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CG_GICST_MASK ; 
 int /*<<< orphan*/  CG_GIT ; 
 int /*<<< orphan*/  SUMO_GICST_DFLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	u32 p, u;
	u32 xclk = FUNC3(rdev);

	FUNC2(SUMO_GICST_DFLT,
			       xclk, 16, &p, &u);

	FUNC1(CG_GIT, FUNC0(p), ~CG_GICST_MASK);
}