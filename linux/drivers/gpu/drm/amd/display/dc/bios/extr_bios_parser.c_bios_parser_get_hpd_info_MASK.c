#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct graphics_object_id {int dummy; } ;
struct graphics_object_hpd_info {int /*<<< orphan*/  hpd_active; int /*<<< orphan*/  hpd_int_gpio_uid; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
typedef  enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_3__ {int /*<<< orphan*/  ucPlugged_PinState; int /*<<< orphan*/  ucHPDIntGPIOID; } ;
typedef  int /*<<< orphan*/  ATOM_OBJECT ;
typedef  TYPE_1__ ATOM_HPD_INT_RECORD ;

/* Variables and functions */
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int BP_RESULT_BADINPUT ; 
 int BP_RESULT_NORECORD ; 
 int BP_RESULT_OK ; 
 int /*<<< orphan*/ * FUNC1 (struct bios_parser*,struct graphics_object_id) ; 
 TYPE_1__* FUNC2 (struct bios_parser*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum bp_result FUNC3(struct dc_bios *dcb,
	struct graphics_object_id id,
	struct graphics_object_hpd_info *info)
{
	struct bios_parser *bp = FUNC0(dcb);
	ATOM_OBJECT *object;
	ATOM_HPD_INT_RECORD *record = NULL;

	if (!info)
		return BP_RESULT_BADINPUT;

	object = FUNC1(bp, id);

	if (!object)
		return BP_RESULT_BADINPUT;

	record = FUNC2(bp, object);

	if (record != NULL) {
		info->hpd_int_gpio_uid = record->ucHPDIntGPIOID;
		info->hpd_active = record->ucPlugged_PinState;
		return BP_RESULT_OK;
	}

	return BP_RESULT_NORECORD;
}