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
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {int* extent; int reg_count; int reg_index; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_5__ {struct cs_section_def* cs_data; } ;
struct TYPE_4__ {int max_hw_contexts; } ;
struct TYPE_6__ {TYPE_2__ rlc; TYPE_1__ config; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PARTITION_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_ME_INITIALIZE ; 
 int FUNC3 (int) ; 
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_PREAMBLE_CNTL ; 
 int PACKET3_PREAMBLE_END_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_SET_BASE ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 int PACKET3_SET_CONTEXT_REG_START ; 
 scalar_t__ SECT_CONTEXT ; 
 int FUNC4 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int FUNC8 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	const struct cs_section_def *sect = NULL;
	const struct cs_extent_def *ext = NULL;
	struct amdgpu_ring *ring = &adev->gfx.gfx_ring[0];
	int r, i;

	r = FUNC4(ring, 7 + 4);
	if (r) {
		FUNC0("amdgpu: cp failed to lock ring (%d).\n", r);
		return r;
	}
	FUNC6(ring, FUNC1(PACKET3_ME_INITIALIZE, 5));
	FUNC6(ring, 0x1);
	FUNC6(ring, 0x0);
	FUNC6(ring, adev->gfx.config.max_hw_contexts - 1);
	FUNC6(ring, FUNC3(1));
	FUNC6(ring, 0);
	FUNC6(ring, 0);

	FUNC6(ring, FUNC1(PACKET3_SET_BASE, 2));
	FUNC6(ring, FUNC2(CE_PARTITION_BASE));
	FUNC6(ring, 0xc000);
	FUNC6(ring, 0xe000);
	FUNC5(ring);

	FUNC7(adev, true);

	r = FUNC4(ring, FUNC8(adev) + 10);
	if (r) {
		FUNC0("amdgpu: cp failed to lock ring (%d).\n", r);
		return r;
	}

	FUNC6(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC6(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	for (sect = adev->gfx.rlc.cs_data; sect->section != NULL; ++sect) {
		for (ext = sect->section; ext->extent != NULL; ++ext) {
			if (sect->id == SECT_CONTEXT) {
				FUNC6(ring,
						  FUNC1(PACKET3_SET_CONTEXT_REG, ext->reg_count));
				FUNC6(ring, ext->reg_index - PACKET3_SET_CONTEXT_REG_START);
				for (i = 0; i < ext->reg_count; i++)
					FUNC6(ring, ext->extent[i]);
			}
		}
	}

	FUNC6(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC6(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

	FUNC6(ring, FUNC1(PACKET3_CLEAR_STATE, 0));
	FUNC6(ring, 0);

	FUNC6(ring, FUNC1(PACKET3_SET_CONTEXT_REG, 2));
	FUNC6(ring, 0x00000316);
	FUNC6(ring, 0x0000000e);
	FUNC6(ring, 0x00000010);

	FUNC5(ring);

	return 0;
}