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
 int /*<<< orphan*/  CG_AT_0 ; 
 int /*<<< orphan*/  CG_AT_1 ; 
 int /*<<< orphan*/  CG_AT_2 ; 
 int /*<<< orphan*/  CG_AT_3 ; 
 int /*<<< orphan*/  CG_AT_4 ; 
 int /*<<< orphan*/  CG_AT_5 ; 
 int /*<<< orphan*/  CG_AT_6 ; 
 int /*<<< orphan*/  CG_AT_7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct radeon_device *rdev,
			  u32 index, u32 value)
{
	if (index == 0)
		FUNC0(CG_AT_0, value);
	else if (index == 1)
		FUNC0(CG_AT_1, value);
	else if (index == 2)
		FUNC0(CG_AT_2, value);
	else if (index == 3)
		FUNC0(CG_AT_3, value);
	else if (index == 4)
		FUNC0(CG_AT_4, value);
	else if (index == 5)
		FUNC0(CG_AT_5, value);
	else if (index == 6)
		FUNC0(CG_AT_6, value);
	else if (index == 7)
		FUNC0(CG_AT_7, value);
}