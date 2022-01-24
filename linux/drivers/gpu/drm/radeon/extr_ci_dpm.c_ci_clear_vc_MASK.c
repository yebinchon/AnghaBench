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
 int /*<<< orphan*/  CG_FTV_0 ; 
 int /*<<< orphan*/  CG_FTV_1 ; 
 int /*<<< orphan*/  CG_FTV_2 ; 
 int /*<<< orphan*/  CG_FTV_3 ; 
 int /*<<< orphan*/  CG_FTV_4 ; 
 int /*<<< orphan*/  CG_FTV_5 ; 
 int /*<<< orphan*/  CG_FTV_6 ; 
 int /*<<< orphan*/  CG_FTV_7 ; 
 int RESET_BUSY_CNT ; 
 int RESET_SCLK_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC0(SCLK_PWRMGT_CNTL);
	tmp |= (RESET_SCLK_CNT | RESET_BUSY_CNT);
	FUNC1(SCLK_PWRMGT_CNTL, tmp);

	FUNC1(CG_FTV_0, 0);
	FUNC1(CG_FTV_1, 0);
	FUNC1(CG_FTV_2, 0);
	FUNC1(CG_FTV_3, 0);
	FUNC1(CG_FTV_4, 0);
	FUNC1(CG_FTV_5, 0);
	FUNC1(CG_FTV_6, 0);
	FUNC1(CG_FTV_7, 0);
}