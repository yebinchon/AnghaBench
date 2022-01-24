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
 int BACKEND_DISABLE_MASK ; 
 int BACKEND_DISABLE_SHIFT ; 
 int /*<<< orphan*/  CC_RB_BACKEND_DISABLE ; 
 int /*<<< orphan*/  GC_USER_RB_BACKEND_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct radeon_device *rdev,
			      u32 max_rb_num_per_se,
			      u32 sh_per_se)
{
	u32 data, mask;

	data = FUNC0(CC_RB_BACKEND_DISABLE);
	if (data & 1)
		data &= BACKEND_DISABLE_MASK;
	else
		data = 0;
	data |= FUNC0(GC_USER_RB_BACKEND_DISABLE);

	data >>= BACKEND_DISABLE_SHIFT;

	mask = FUNC1(max_rb_num_per_se / sh_per_se);

	return data & mask;
}