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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct radeon_i2c_bus_rec {int valid; } ;
struct radeon_device {struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_I2C_INFO_TABLE ; 
 int /*<<< orphan*/  DDC_MONID ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct radeon_i2c_bus_rec FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct radeon_i2c_bus_rec FUNC3(struct radeon_device *rdev)
{
	struct drm_device *dev = rdev->ddev;
	struct radeon_i2c_bus_rec i2c;
	u16 offset;
	u8 id, blocks, clk, data;
	int i;

	i2c.valid = false;

	offset = FUNC1(dev, COMBIOS_I2C_INFO_TABLE);
	if (offset) {
		blocks = FUNC0(offset + 2);
		for (i = 0; i < blocks; i++) {
			id = FUNC0(offset + 3 + (i * 5) + 0);
			if (id == 136) {
				clk = FUNC0(offset + 3 + (i * 5) + 3);
				data = FUNC0(offset + 3 + (i * 5) + 4);
				/* gpiopad */
				i2c = FUNC2(rdev, DDC_MONID,
							    (1 << clk), (1 << data));
				break;
			}
		}
	}
	return i2c;
}