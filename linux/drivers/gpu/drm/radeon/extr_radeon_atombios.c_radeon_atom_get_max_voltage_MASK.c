#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union voltage_object_info {int /*<<< orphan*/  v2; int /*<<< orphan*/  v1; } ;
struct TYPE_12__ {int /*<<< orphan*/  ucNumOfVoltageEntries; int /*<<< orphan*/ * asVIDAdjustEntries; } ;
struct TYPE_10__ {TYPE_5__ asFormula; } ;
struct TYPE_13__ {int ucFlag; int ucNumOfVoltageEntries; int /*<<< orphan*/  usVoltageStep; int /*<<< orphan*/  usVoltageBaseLevel; } ;
struct TYPE_9__ {TYPE_6__ asFormula; } ;
union voltage_object {TYPE_3__ v2; TYPE_2__ v1; } ;
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_8__ {TYPE_7__* atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_11__ {int /*<<< orphan*/  usVoltageValue; } ;
typedef  TYPE_4__ VOLTAGE_LUT_ENTRY ;
struct TYPE_14__ {int bios; } ;
typedef  TYPE_5__ ATOM_VOLTAGE_FORMULA_V2 ;
typedef  TYPE_6__ ATOM_VOLTAGE_FORMULA ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VoltageObjectInfo ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int,int*,int*,int*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct radeon_device *rdev,
				u8 voltage_type, u16 *max_voltage)
{
	int index = FUNC1(DATA, VoltageObjectInfo);
	u8 frev, crev;
	u16 data_offset, size;
	union voltage_object_info *voltage_info;
	union voltage_object *voltage_object = NULL;

	if (FUNC4(rdev->mode_info.atom_context, index, &size,
				   &frev, &crev, &data_offset)) {
		voltage_info = (union voltage_object_info *)
			(rdev->mode_info.atom_context->bios + data_offset);

		switch (crev) {
		case 1:
			voltage_object = (union voltage_object *)
				FUNC2(&voltage_info->v1, voltage_type);
			if (voltage_object) {
				ATOM_VOLTAGE_FORMULA *formula =
					&voltage_object->v1.asFormula;
				if (formula->ucFlag & 1)
					*max_voltage =
						FUNC5(formula->usVoltageBaseLevel) +
						formula->ucNumOfVoltageEntries / 2 *
						FUNC5(formula->usVoltageStep);
				else
					*max_voltage =
						FUNC5(formula->usVoltageBaseLevel) +
						(formula->ucNumOfVoltageEntries - 1) *
						FUNC5(formula->usVoltageStep);
				return 0;
			}
			break;
		case 2:
			voltage_object = (union voltage_object *)
				FUNC3(&voltage_info->v2, voltage_type);
			if (voltage_object) {
				ATOM_VOLTAGE_FORMULA_V2 *formula =
					&voltage_object->v2.asFormula;
				if (formula->ucNumOfVoltageEntries) {
					VOLTAGE_LUT_ENTRY *lut = (VOLTAGE_LUT_ENTRY *)
						((u8 *)&formula->asVIDAdjustEntries[0] +
						 (sizeof(VOLTAGE_LUT_ENTRY) * (formula->ucNumOfVoltageEntries - 1)));
					*max_voltage =
						FUNC5(lut->usVoltageValue);
					return 0;
				}
			}
			break;
		default:
			FUNC0("unknown voltage object table\n");
			return -EINVAL;
		}

	}
	return -EINVAL;
}