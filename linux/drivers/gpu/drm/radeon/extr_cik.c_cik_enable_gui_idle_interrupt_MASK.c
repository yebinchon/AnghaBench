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
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 int /*<<< orphan*/  CP_INT_CNTL_RING0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
					  bool enable)
{
	u32 tmp = FUNC0(CP_INT_CNTL_RING0);

	if (enable)
		tmp |= (CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
	else
		tmp &= ~(CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
	FUNC1(CP_INT_CNTL_RING0, tmp);
}