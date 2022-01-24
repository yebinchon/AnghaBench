#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
union voltage_object_info {int /*<<< orphan*/  v3; } ;
struct TYPE_11__ {int ucGpioEntryNum; int /*<<< orphan*/  ucPhaseDelay; int /*<<< orphan*/  ulGpioMaskVal; TYPE_4__* asVolGpioLut; } ;
struct TYPE_8__ {TYPE_5__ asGpioVoltageObj; } ;
union voltage_object {TYPE_2__ v3; } ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct atom_voltage_table {int count; int /*<<< orphan*/  phase_delay; void* mask_low; TYPE_3__* entries; } ;
struct TYPE_7__ {TYPE_6__* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  ulVoltageId; int /*<<< orphan*/  usVoltageValue; } ;
typedef  TYPE_4__ VOLTAGE_LUT_ENTRY_V2 ;
struct TYPE_12__ {scalar_t__ bios; } ;
struct TYPE_9__ {void* smio_low; int /*<<< orphan*/  value; } ;
typedef  TYPE_5__ ATOM_GPIO_VOLTAGE_OBJECT_V3 ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_VOLTAGE_ENTRIES ; 
 int /*<<< orphan*/  VoltageObjectInfo ; 
 scalar_t__ FUNC2 (TYPE_6__*,int,scalar_t__*,int*,int*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct amdgpu_device *adev,
				      u8 voltage_type, u8 voltage_mode,
				      struct atom_voltage_table *voltage_table)
{
	int index = FUNC1(DATA, VoltageObjectInfo);
	u8 frev, crev;
	u16 data_offset, size;
	int i;
	union voltage_object_info *voltage_info;
	union voltage_object *voltage_object = NULL;

	if (FUNC2(adev->mode_info.atom_context, index, &size,
				   &frev, &crev, &data_offset)) {
		voltage_info = (union voltage_object_info *)
			(adev->mode_info.atom_context->bios + data_offset);

		switch (frev) {
		case 3:
			switch (crev) {
			case 1:
				voltage_object = (union voltage_object *)
					FUNC3(&voltage_info->v3,
								      voltage_type, voltage_mode);
				if (voltage_object) {
					ATOM_GPIO_VOLTAGE_OBJECT_V3 *gpio =
						&voltage_object->v3.asGpioVoltageObj;
					VOLTAGE_LUT_ENTRY_V2 *lut;
					if (gpio->ucGpioEntryNum > MAX_VOLTAGE_ENTRIES)
						return -EINVAL;
					lut = &gpio->asVolGpioLut[0];
					for (i = 0; i < gpio->ucGpioEntryNum; i++) {
						voltage_table->entries[i].value =
							FUNC4(lut->usVoltageValue);
						voltage_table->entries[i].smio_low =
							FUNC5(lut->ulVoltageId);
						lut = (VOLTAGE_LUT_ENTRY_V2 *)
							((u8 *)lut + sizeof(VOLTAGE_LUT_ENTRY_V2));
					}
					voltage_table->mask_low = FUNC5(gpio->ulGpioMaskVal);
					voltage_table->count = gpio->ucGpioEntryNum;
					voltage_table->phase_delay = gpio->ucPhaseDelay;
					return 0;
				}
				break;
			default:
				FUNC0("unknown voltage object table\n");
				return -EINVAL;
			}
			break;
		default:
			FUNC0("unknown voltage object table\n");
			return -EINVAL;
		}
	}
	return -EINVAL;
}