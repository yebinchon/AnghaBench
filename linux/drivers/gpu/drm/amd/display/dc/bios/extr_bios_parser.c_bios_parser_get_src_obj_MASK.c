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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct graphics_object_id {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
typedef  enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef  int /*<<< orphan*/  ATOM_OBJECT ;

/* Variables and functions */
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int BP_RESULT_BADINPUT ; 
 int BP_RESULT_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (struct bios_parser*,struct graphics_object_id) ; 
 size_t FUNC3 (struct bios_parser*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 struct graphics_object_id FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum bp_result FUNC5(struct dc_bios *dcb,
	struct graphics_object_id object_id, uint32_t index,
	struct graphics_object_id *src_object_id)
{
	uint32_t number;
	uint16_t *id;
	ATOM_OBJECT *object;
	struct bios_parser *bp = FUNC0(dcb);

	if (!src_object_id)
		return BP_RESULT_BADINPUT;

	object = FUNC2(bp, object_id);

	if (!object) {
		FUNC1(); /* Invalid object id */
		return BP_RESULT_BADINPUT;
	}

	number = FUNC3(bp, object, &id);

	if (number <= index)
		return BP_RESULT_BADINPUT;

	*src_object_id = FUNC4(id[index]);

	return BP_RESULT_OK;
}