#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_4__ {size_t last; TYPE_1__* mc_reg_address; } ;
struct evergreen_power_info {TYPE_2__ mc_reg_table; } ;
struct evergreen_mc_reg_entry {int /*<<< orphan*/ * mc_data; } ;
struct TYPE_3__ {int s1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
						     struct evergreen_mc_reg_entry *entry)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	u32 i;

	for (i = 0; i < eg_pi->mc_reg_table.last; i++)
		entry->mc_data[i] =
			FUNC0(eg_pi->mc_reg_table.mc_reg_address[i].s1 << 2);

}