#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct graphics_object_id {int dummy; } ;
struct dc_bios {int dummy; } ;
struct connector_device_tag_info {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  acpi_device; } ;
struct bios_parser {int dummy; } ;
typedef  enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_5__ {int /*<<< orphan*/  usDeviceID; int /*<<< orphan*/  ulACPIDeviceEnum; } ;
struct TYPE_4__ {size_t ucNumberOfDevice; TYPE_2__* asDeviceTag; } ;
typedef  int /*<<< orphan*/  ATOM_OBJECT ;
typedef  TYPE_1__ ATOM_CONNECTOR_DEVICE_TAG_RECORD ;
typedef  TYPE_2__ ATOM_CONNECTOR_DEVICE_TAG ;

/* Variables and functions */
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int BP_RESULT_BADINPUT ; 
 int BP_RESULT_NORECORD ; 
 scalar_t__ BP_RESULT_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct bios_parser*,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct bios_parser*,struct graphics_object_id) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum bp_result FUNC7(
	struct dc_bios *dcb,
	struct graphics_object_id connector_object_id,
	uint32_t device_tag_index,
	struct connector_device_tag_info *info)
{
	struct bios_parser *bp = FUNC0(dcb);
	ATOM_OBJECT *object;
	ATOM_CONNECTOR_DEVICE_TAG_RECORD *record = NULL;
	ATOM_CONNECTOR_DEVICE_TAG *device_tag;

	if (!info)
		return BP_RESULT_BADINPUT;

	/* getBiosObject will return MXM object */
	object = FUNC4(bp, connector_object_id);

	if (!object) {
		FUNC1(); /* Invalid object id */
		return BP_RESULT_BADINPUT;
	}

	if (FUNC2(bp, object, &record)
		!= BP_RESULT_OK)
		return BP_RESULT_NORECORD;

	if (device_tag_index >= record->ucNumberOfDevice)
		return BP_RESULT_NORECORD;

	device_tag = &record->asDeviceTag[device_tag_index];

	info->acpi_device = FUNC6(device_tag->ulACPIDeviceEnum);
	info->dev_id =
		FUNC3(FUNC5(device_tag->usDeviceID));

	return BP_RESULT_OK;
}