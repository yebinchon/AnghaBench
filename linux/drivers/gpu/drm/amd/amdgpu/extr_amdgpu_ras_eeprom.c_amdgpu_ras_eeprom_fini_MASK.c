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
struct amdgpu_ras_eeprom_control {int /*<<< orphan*/  eeprom_accessor; } ;
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct amdgpu_device* FUNC1 (struct amdgpu_ras_eeprom_control*) ; 

void FUNC2(struct amdgpu_ras_eeprom_control *control)
{
	struct amdgpu_device *adev = FUNC1(control);

	switch (adev->asic_type) {
	case CHIP_VEGA20:
		FUNC0(&control->eeprom_accessor);
		break;

	default:
		return;
	}
}