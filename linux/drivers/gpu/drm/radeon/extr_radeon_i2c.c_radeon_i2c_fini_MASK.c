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
struct radeon_device {int /*<<< orphan*/ ** i2c_bus; } ;

/* Variables and functions */
 int RADEON_MAX_I2C_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct radeon_device *rdev)
{
	int i;

	for (i = 0; i < RADEON_MAX_I2C_BUS; i++) {
		if (rdev->i2c_bus[i]) {
			FUNC0(rdev->i2c_bus[i]);
			rdev->i2c_bus[i] = NULL;
		}
	}
}