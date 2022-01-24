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
typedef  int u32 ;
struct TYPE_3__ {int backend_enable_mask; } ;
struct TYPE_4__ {TYPE_1__ cik; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ config; } ;

/* Variables and functions */
 scalar_t__ CHIP_HAWAII ; 
 int CIK_RB_BITMAP_WIDTH_PER_SH ; 
 int HAWAII_RB_BITMAP_WIDTH_PER_SH ; 
 int /*<<< orphan*/  PA_SC_RASTER_CONFIG ; 
 int FUNC0 (int) ; 
 int RASTER_CONFIG_RB_MAP_0 ; 
 int RASTER_CONFIG_RB_MAP_2 ; 
 int RASTER_CONFIG_RB_MAP_3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
			 u32 se_num, u32 sh_per_se,
			 u32 max_rb_num_per_se)
{
	int i, j;
	u32 data, mask;
	u32 disabled_rbs = 0;
	u32 enabled_rbs = 0;

	for (i = 0; i < se_num; i++) {
		for (j = 0; j < sh_per_se; j++) {
			FUNC3(rdev, i, j);
			data = FUNC2(rdev, max_rb_num_per_se, sh_per_se);
			if (rdev->family == CHIP_HAWAII)
				disabled_rbs |= data << ((i * sh_per_se + j) * HAWAII_RB_BITMAP_WIDTH_PER_SH);
			else
				disabled_rbs |= data << ((i * sh_per_se + j) * CIK_RB_BITMAP_WIDTH_PER_SH);
		}
	}
	FUNC3(rdev, 0xffffffff, 0xffffffff);

	mask = 1;
	for (i = 0; i < max_rb_num_per_se * se_num; i++) {
		if (!(disabled_rbs & mask))
			enabled_rbs |= mask;
		mask <<= 1;
	}

	rdev->config.cik.backend_enable_mask = enabled_rbs;

	for (i = 0; i < se_num; i++) {
		FUNC3(rdev, i, 0xffffffff);
		data = 0;
		for (j = 0; j < sh_per_se; j++) {
			switch (enabled_rbs & 3) {
			case 0:
				if (j == 0)
					data |= FUNC0(RASTER_CONFIG_RB_MAP_3);
				else
					data |= FUNC0(RASTER_CONFIG_RB_MAP_0);
				break;
			case 1:
				data |= (RASTER_CONFIG_RB_MAP_0 << (i * sh_per_se + j) * 2);
				break;
			case 2:
				data |= (RASTER_CONFIG_RB_MAP_3 << (i * sh_per_se + j) * 2);
				break;
			case 3:
			default:
				data |= (RASTER_CONFIG_RB_MAP_2 << (i * sh_per_se + j) * 2);
				break;
			}
			enabled_rbs >>= 2;
		}
		FUNC1(PA_SC_RASTER_CONFIG, data);
	}
	FUNC3(rdev, 0xffffffff, 0xffffffff);
}