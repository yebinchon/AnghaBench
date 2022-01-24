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
 int /*<<< orphan*/  CG_GCOOR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int*,int*) ; 
 int FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	u32 p, u;
	u32 xclk = FUNC5(rdev);
	u32 grs = 256 * 25 / 100;

	FUNC4(1, xclk, 14, &p, &u);

	FUNC3(CG_GCOOR, FUNC0(grs) | FUNC1(p) | FUNC2(u));
}