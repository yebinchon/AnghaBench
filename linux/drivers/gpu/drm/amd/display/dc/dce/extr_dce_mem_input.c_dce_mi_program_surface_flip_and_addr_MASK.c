#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  quad_part; } ;
struct TYPE_8__ {int /*<<< orphan*/  quad_part; } ;
struct TYPE_6__ {TYPE_3__ right_addr; TYPE_4__ left_addr; } ;
struct TYPE_5__ {TYPE_4__ addr; } ;
struct dc_plane_address {int type; TYPE_2__ grph_stereo; TYPE_1__ grph; } ;
struct mem_input {struct dc_plane_address current_address; struct dc_plane_address request_address; } ;
struct dce_mem_input {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GRPH_FLIP_CONTROL ; 
 int /*<<< orphan*/  GRPH_SURFACE_UPDATE_H_RETRACE_EN ; 
 int /*<<< orphan*/  GRPH_UPDATE ; 
 int /*<<< orphan*/  GRPH_UPDATE_LOCK ; 
#define  PLN_ADDR_TYPE_GRAPHICS 129 
#define  PLN_ADDR_TYPE_GRPH_STEREO 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dce_mem_input* FUNC2 (struct mem_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_mem_input*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (struct dce_mem_input*,TYPE_3__) ; 

__attribute__((used)) static bool FUNC5(
	struct mem_input *mem_input,
	const struct dc_plane_address *address,
	bool flip_immediate)
{
	struct dce_mem_input *dce_mi = FUNC2(mem_input);

	FUNC1(GRPH_UPDATE, GRPH_UPDATE_LOCK, 1);

	FUNC1(
		GRPH_FLIP_CONTROL,
		GRPH_SURFACE_UPDATE_H_RETRACE_EN, flip_immediate ? 1 : 0);

	switch (address->type) {
	case PLN_ADDR_TYPE_GRAPHICS:
		if (address->grph.addr.quad_part == 0)
			break;
		FUNC3(dce_mi, address->grph.addr);
		break;
	case PLN_ADDR_TYPE_GRPH_STEREO:
		if (address->grph_stereo.left_addr.quad_part == 0 ||
		    address->grph_stereo.right_addr.quad_part == 0)
			break;
		FUNC3(dce_mi, address->grph_stereo.left_addr);
		FUNC4(dce_mi, address->grph_stereo.right_addr);
		break;
	default:
		/* not supported */
		FUNC0();
		break;
	}

	mem_input->request_address = *address;

	if (flip_immediate)
		mem_input->current_address = *address;

	FUNC1(GRPH_UPDATE, GRPH_UPDATE_LOCK, 0);

	return true;
}