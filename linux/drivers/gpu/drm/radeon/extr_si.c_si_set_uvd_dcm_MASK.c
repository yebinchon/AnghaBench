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
 int FUNC0 (int) ; 
 int CG_DT_MASK ; 
 int FUNC1 (int) ; 
 int CLK_OD_MASK ; 
 int DCM ; 
 int DYN_OR_EN ; 
 int DYN_RR_EN ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD_CGC_CTRL ; 
 int /*<<< orphan*/  UVD_CGC_CTRL2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev,
			   bool sw_mode)
{
	u32 tmp, tmp2;

	tmp = FUNC3(UVD_CGC_CTRL);
	tmp &= ~(CLK_OD_MASK | CG_DT_MASK);
	tmp |= DCM | FUNC0(1) | FUNC1(4);

	if (sw_mode) {
		tmp &= ~0x7ffff800;
		tmp2 = DYN_OR_EN | DYN_RR_EN | FUNC2(7);
	} else {
		tmp |= 0x7ffff800;
		tmp2 = 0;
	}

	FUNC4(UVD_CGC_CTRL, tmp);
	FUNC5(UVD_CGC_CTRL2, tmp2);
}