#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u32 ;
struct radeon_i2c_bus_rec {scalar_t__ a_clk_reg; scalar_t__ mask_clk_reg; int a_clk_mask; scalar_t__ a_data_reg; int a_data_mask; scalar_t__ en_clk_reg; int en_clk_mask; scalar_t__ en_data_reg; int en_data_mask; int mask_clk_mask; scalar_t__ mask_data_reg; int mask_data_mask; scalar_t__ hw_capable; } ;
struct radeon_i2c_chan {int /*<<< orphan*/  mutex; struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  dc_hw_i2c_mutex; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ CHIP_R200 ; 
 scalar_t__ CHIP_R300 ; 
 scalar_t__ CHIP_R350 ; 
 scalar_t__ CHIP_RV350 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R200_SEL_DDC1 ; 
 int /*<<< orphan*/  R200_SEL_DDC3 ; 
 scalar_t__ RADEON_DVI_I2C_CNTL_0 ; 
 scalar_t__ RADEON_GPIO_CRT2_DDC ; 
 scalar_t__ RADEON_GPIO_DVI_DDC ; 
 scalar_t__ RADEON_GPIO_MONID ; 
 int RADEON_I2C_SOFT_RST ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 struct radeon_i2c_chan* FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *i2c_adap)
{
	struct radeon_i2c_chan *i2c = FUNC5(i2c_adap);
	struct radeon_device *rdev = i2c->dev->dev_private;
	struct radeon_i2c_bus_rec *rec = &i2c->rec;
	uint32_t temp;

	FUNC6(&i2c->mutex);

	/* RV410 appears to have a bug where the hw i2c in reset
	 * holds the i2c port in a bad state - switch hw i2c away before
	 * doing DDC - do this for all r200s/r300s/r400s for safety sake
	 */
	if (rec->hw_capable) {
		if ((rdev->family >= CHIP_R200) && !FUNC0(rdev)) {
			u32 reg;

			if (rdev->family >= CHIP_RV350)
				reg = RADEON_GPIO_MONID;
			else if ((rdev->family == CHIP_R300) ||
				 (rdev->family == CHIP_R350))
				reg = RADEON_GPIO_DVI_DDC;
			else
				reg = RADEON_GPIO_CRT2_DDC;

			FUNC6(&rdev->dc_hw_i2c_mutex);
			if (rec->a_clk_reg == reg) {
				FUNC4(RADEON_DVI_I2C_CNTL_0, (RADEON_I2C_SOFT_RST |
							       FUNC2(R200_SEL_DDC1)));
			} else {
				FUNC4(RADEON_DVI_I2C_CNTL_0, (RADEON_I2C_SOFT_RST |
							       FUNC2(R200_SEL_DDC3)));
			}
			FUNC7(&rdev->dc_hw_i2c_mutex);
		}
	}

	/* switch the pads to ddc mode */
	if (FUNC1(rdev) && rec->hw_capable) {
		temp = FUNC3(rec->mask_clk_reg);
		temp &= ~(1 << 16);
		FUNC4(rec->mask_clk_reg, temp);
	}

	/* clear the output pin values */
	temp = FUNC3(rec->a_clk_reg) & ~rec->a_clk_mask;
	FUNC4(rec->a_clk_reg, temp);

	temp = FUNC3(rec->a_data_reg) & ~rec->a_data_mask;
	FUNC4(rec->a_data_reg, temp);

	/* set the pins to input */
	temp = FUNC3(rec->en_clk_reg) & ~rec->en_clk_mask;
	FUNC4(rec->en_clk_reg, temp);

	temp = FUNC3(rec->en_data_reg) & ~rec->en_data_mask;
	FUNC4(rec->en_data_reg, temp);

	/* mask the gpio pins for software use */
	temp = FUNC3(rec->mask_clk_reg) | rec->mask_clk_mask;
	FUNC4(rec->mask_clk_reg, temp);
	temp = FUNC3(rec->mask_clk_reg);

	temp = FUNC3(rec->mask_data_reg) | rec->mask_data_mask;
	FUNC4(rec->mask_data_reg, temp);
	temp = FUNC3(rec->mask_data_reg);

	return 0;
}