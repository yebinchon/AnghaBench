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
typedef  int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
struct _vcs_dpi_display_pipe_dest_params_st {int vstartup_start; int vready_offset; int vupdate_width; int vupdate_offset; int htotal; int vblank_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUBPREQ_DEBUG_DB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct dcn10_hubp* FUNC2 (struct hubp*) ; 

void FUNC3(struct hubp *hubp,
		struct _vcs_dpi_display_pipe_dest_params_st *pipe_dest)
{
	uint32_t value = 0;
	struct dcn10_hubp *hubp1 = FUNC2(hubp);

	/* set HBUBREQ_DEBUG_DB[12] = 1 */
	value = FUNC0(HUBPREQ_DEBUG_DB);

	/* hack mode disable */
	value |= 0x100;
	value &= ~0x1000;

	if ((pipe_dest->vstartup_start - 2*(pipe_dest->vready_offset+pipe_dest->vupdate_width
		+ pipe_dest->vupdate_offset) / pipe_dest->htotal) <= pipe_dest->vblank_end) {
		/* if (eco_fix_needed(otg_global_sync_timing)
		 * set HBUBREQ_DEBUG_DB[12] = 1 */
		value |= 0x1000;
	}

	FUNC1(HUBPREQ_DEBUG_DB, value);
}