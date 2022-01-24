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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct vc4_rcl_setup {TYPE_2__* zs_write; TYPE_3__* msaa_zs_write; TYPE_3__* msaa_color_write; scalar_t__ color_write; TYPE_3__* zs_read; TYPE_3__* color_read; } ;
struct vc4_exec_info {int tile_alloc_offset; int bin_tiles_x; struct drm_vc4_submit_cl* args; } ;
struct TYPE_5__ {int bits; int offset; } ;
struct TYPE_8__ {int flags; int bits; int offset; } ;
struct drm_vc4_submit_cl {scalar_t__ bin_cl_size; TYPE_1__ zs_write; TYPE_4__ msaa_zs_write; TYPE_4__ msaa_color_write; TYPE_4__ zs_read; TYPE_4__ color_read; } ;
struct TYPE_7__ {int paddr; } ;
struct TYPE_6__ {int paddr; } ;

/* Variables and functions */
 int VC4_LOADSTORE_FULL_RES_DISABLE_CLEAR_ALL ; 
 int VC4_LOADSTORE_FULL_RES_DISABLE_COLOR ; 
 int VC4_LOADSTORE_FULL_RES_DISABLE_ZS ; 
 int VC4_LOADSTORE_FULL_RES_EOF ; 
 int VC4_LOADSTORE_TILE_BUFFER_EOF ; 
 int /*<<< orphan*/  VC4_PACKET_BRANCH_TO_SUB_LIST ; 
 int /*<<< orphan*/  VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER ; 
 int /*<<< orphan*/  VC4_PACKET_LOAD_TILE_BUFFER_GENERAL ; 
 int /*<<< orphan*/  VC4_PACKET_STORE_FULL_RES_TILE_BUFFER ; 
 int /*<<< orphan*/  VC4_PACKET_STORE_MS_TILE_BUFFER ; 
 int /*<<< orphan*/  VC4_PACKET_STORE_MS_TILE_BUFFER_AND_EOF ; 
 int /*<<< orphan*/  VC4_PACKET_STORE_TILE_BUFFER_GENERAL ; 
 int /*<<< orphan*/  VC4_PACKET_WAIT_ON_SEMAPHORE ; 
 int VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR ; 
 int VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES ; 
 int /*<<< orphan*/  FUNC0 (struct vc4_rcl_setup*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vc4_rcl_setup*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc4_rcl_setup*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vc4_exec_info*,TYPE_3__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc4_rcl_setup*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc4_rcl_setup*,int,int) ; 

__attribute__((used)) static void FUNC6(struct vc4_exec_info *exec,
		      struct vc4_rcl_setup *setup,
		      uint8_t x, uint8_t y, bool first, bool last)
{
	struct drm_vc4_submit_cl *args = exec->args;
	bool has_bin = args->bin_cl_size != 0;

	/* Note that the load doesn't actually occur until the
	 * tile coords packet is processed, and only one load
	 * may be outstanding at a time.
	 */
	if (setup->color_read) {
		if (args->color_read.flags &
		    VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES) {
			FUNC2(setup, VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER);
			FUNC1(setup,
				FUNC3(exec, setup->color_read,
						    &args->color_read, x, y) |
				VC4_LOADSTORE_FULL_RES_DISABLE_ZS);
		} else {
			FUNC2(setup, VC4_PACKET_LOAD_TILE_BUFFER_GENERAL);
			FUNC0(setup, args->color_read.bits);
			FUNC1(setup, setup->color_read->paddr +
				args->color_read.offset);
		}
	}

	if (setup->zs_read) {
		if (setup->color_read) {
			/* Exec previous load. */
			FUNC5(setup, x, y);
			FUNC4(setup);
		}

		if (args->zs_read.flags &
		    VC4_SUBMIT_RCL_SURFACE_READ_IS_FULL_RES) {
			FUNC2(setup, VC4_PACKET_LOAD_FULL_RES_TILE_BUFFER);
			FUNC1(setup,
				FUNC3(exec, setup->zs_read,
						    &args->zs_read, x, y) |
				VC4_LOADSTORE_FULL_RES_DISABLE_COLOR);
		} else {
			FUNC2(setup, VC4_PACKET_LOAD_TILE_BUFFER_GENERAL);
			FUNC0(setup, args->zs_read.bits);
			FUNC1(setup, setup->zs_read->paddr +
				args->zs_read.offset);
		}
	}

	/* Clipping depends on tile coordinates having been
	 * emitted, so we always need one here.
	 */
	FUNC5(setup, x, y);

	/* Wait for the binner before jumping to the first
	 * tile's lists.
	 */
	if (first && has_bin)
		FUNC2(setup, VC4_PACKET_WAIT_ON_SEMAPHORE);

	if (has_bin) {
		FUNC2(setup, VC4_PACKET_BRANCH_TO_SUB_LIST);
		FUNC1(setup, (exec->tile_alloc_offset +
				(y * exec->bin_tiles_x + x) * 32));
	}

	if (setup->msaa_color_write) {
		bool last_tile_write = (!setup->msaa_zs_write &&
					!setup->zs_write &&
					!setup->color_write);
		uint32_t bits = VC4_LOADSTORE_FULL_RES_DISABLE_ZS;

		if (!last_tile_write)
			bits |= VC4_LOADSTORE_FULL_RES_DISABLE_CLEAR_ALL;
		else if (last)
			bits |= VC4_LOADSTORE_FULL_RES_EOF;
		FUNC2(setup, VC4_PACKET_STORE_FULL_RES_TILE_BUFFER);
		FUNC1(setup,
			FUNC3(exec, setup->msaa_color_write,
					    &args->msaa_color_write, x, y) |
			bits);
	}

	if (setup->msaa_zs_write) {
		bool last_tile_write = (!setup->zs_write &&
					!setup->color_write);
		uint32_t bits = VC4_LOADSTORE_FULL_RES_DISABLE_COLOR;

		if (setup->msaa_color_write)
			FUNC5(setup, x, y);
		if (!last_tile_write)
			bits |= VC4_LOADSTORE_FULL_RES_DISABLE_CLEAR_ALL;
		else if (last)
			bits |= VC4_LOADSTORE_FULL_RES_EOF;
		FUNC2(setup, VC4_PACKET_STORE_FULL_RES_TILE_BUFFER);
		FUNC1(setup,
			FUNC3(exec, setup->msaa_zs_write,
					    &args->msaa_zs_write, x, y) |
			bits);
	}

	if (setup->zs_write) {
		bool last_tile_write = !setup->color_write;

		if (setup->msaa_color_write || setup->msaa_zs_write)
			FUNC5(setup, x, y);

		FUNC2(setup, VC4_PACKET_STORE_TILE_BUFFER_GENERAL);
		FUNC0(setup, args->zs_write.bits |
			(last_tile_write ?
			 0 : VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR));
		FUNC1(setup,
			(setup->zs_write->paddr + args->zs_write.offset) |
			((last && last_tile_write) ?
			 VC4_LOADSTORE_TILE_BUFFER_EOF : 0));
	}

	if (setup->color_write) {
		if (setup->msaa_color_write || setup->msaa_zs_write ||
		    setup->zs_write) {
			FUNC5(setup, x, y);
		}

		if (last)
			FUNC2(setup, VC4_PACKET_STORE_MS_TILE_BUFFER_AND_EOF);
		else
			FUNC2(setup, VC4_PACKET_STORE_MS_TILE_BUFFER);
	}
}