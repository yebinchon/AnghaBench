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
 int /*<<< orphan*/  CG_LT ; 
 int /*<<< orphan*/  CG_RT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct radeon_device *rdev,
		 u32 l_to_m, u32 m_to_h,
		 u32 h_to_m, u32 m_to_l)
{
	FUNC3(CG_RT, FUNC1(l_to_m) | FUNC2(m_to_h));
	FUNC3(CG_LT, FUNC0(h_to_m) | FUNC2(m_to_l));
}