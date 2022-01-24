#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {int* extent; int reg_count; int reg_index; } ;
struct TYPE_5__ {int pa_sc_tile_steering_override; } ;
struct TYPE_4__ {struct cs_section_def* cs_data; } ;
struct TYPE_6__ {TYPE_2__ config; TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_CONTEXT_CONTROL ; 
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_PREAMBLE_CNTL ; 
 int PACKET3_PREAMBLE_END_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 int PACKET3_SET_CONTEXT_REG_START ; 
 scalar_t__ SECT_CONTEXT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  mmPA_SC_TILE_STEERING_OVERRIDE ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
				    volatile u32 *buffer)
{
	u32 count = 0, i;
	const struct cs_section_def *sect = NULL;
	const struct cs_extent_def *ext = NULL;
	int ctx_reg_offset;

	if (adev->gfx.rlc.cs_data == NULL)
		return;
	if (buffer == NULL)
		return;

	buffer[count++] = FUNC2(FUNC0(PACKET3_PREAMBLE_CNTL, 0));
	buffer[count++] = FUNC2(PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	buffer[count++] = FUNC2(FUNC0(PACKET3_CONTEXT_CONTROL, 1));
	buffer[count++] = FUNC2(0x80000000);
	buffer[count++] = FUNC2(0x80000000);

	for (sect = adev->gfx.rlc.cs_data; sect->section != NULL; ++sect) {
		for (ext = sect->section; ext->extent != NULL; ++ext) {
			if (sect->id == SECT_CONTEXT) {
				buffer[count++] =
					FUNC2(FUNC0(PACKET3_SET_CONTEXT_REG, ext->reg_count));
				buffer[count++] = FUNC2(ext->reg_index -
						PACKET3_SET_CONTEXT_REG_START);
				for (i = 0; i < ext->reg_count; i++)
					buffer[count++] = FUNC2(ext->extent[i]);
			} else {
				return;
			}
		}
	}

	ctx_reg_offset =
		FUNC1(GC, 0, mmPA_SC_TILE_STEERING_OVERRIDE) - PACKET3_SET_CONTEXT_REG_START;
	buffer[count++] = FUNC2(FUNC0(PACKET3_SET_CONTEXT_REG, 1));
	buffer[count++] = FUNC2(ctx_reg_offset);
	buffer[count++] = FUNC2(adev->gfx.config.pa_sc_tile_steering_override);

	buffer[count++] = FUNC2(FUNC0(PACKET3_PREAMBLE_CNTL, 0));
	buffer[count++] = FUNC2(PACKET3_PREAMBLE_END_CLEAR_STATE);

	buffer[count++] = FUNC2(FUNC0(PACKET3_CLEAR_STATE, 0));
	buffer[count++] = FUNC2(0);
}