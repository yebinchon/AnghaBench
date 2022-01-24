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
 int /*<<< orphan*/  GRBM_GFX_INDEX ; 
 int INSTANCE_BROADCAST_WRITES ; 
 int SE_BROADCAST_WRITES ; 
 int FUNC0 (int) ; 
 int SH_BROADCAST_WRITES ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
			     u32 se_num, u32 sh_num)
{
	u32 data = INSTANCE_BROADCAST_WRITES;

	if ((se_num == 0xffffffff) && (sh_num == 0xffffffff))
		data |= SH_BROADCAST_WRITES | SE_BROADCAST_WRITES;
	else if (se_num == 0xffffffff)
		data |= SE_BROADCAST_WRITES | FUNC1(sh_num);
	else if (sh_num == 0xffffffff)
		data |= SH_BROADCAST_WRITES | FUNC0(se_num);
	else
		data |= FUNC1(sh_num) | FUNC0(se_num);
	FUNC2(GRBM_GFX_INDEX, data);
}