#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {int* extent; int reg_count; int reg_index; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; } ;
struct TYPE_4__ {TYPE_1__ config; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PARTITION_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GC ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_CONTEXT_CONTROL ; 
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_PREAMBLE_CNTL ; 
 int PACKET3_PREAMBLE_END_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_SET_BASE ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 int PACKET3_SET_CONTEXT_REG_START ; 
 int /*<<< orphan*/  PACKET3_SET_UCONFIG_REG ; 
 int PACKET3_SET_UCONFIG_REG_INDEX_TYPE ; 
 int PACKET3_SET_UCONFIG_REG_START ; 
 scalar_t__ SECT_CONTEXT ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct amdgpu_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*,int) ; 
 struct cs_section_def* gfx9_cs_data ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCP_DEVICE_ID ; 
 int /*<<< orphan*/  mmCP_MAX_CONTEXT ; 
 int /*<<< orphan*/  mmVGT_INDEX_TYPE ; 

__attribute__((used)) static int FUNC10(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = &adev->gfx.gfx_ring[0];
	const struct cs_section_def *sect = NULL;
	const struct cs_extent_def *ext = NULL;
	int r, i, tmp;

	/* init the CP */
	FUNC4(GC, 0, mmCP_MAX_CONTEXT, adev->gfx.config.max_hw_contexts - 1);
	FUNC4(GC, 0, mmCP_DEVICE_ID, 1);

	FUNC8(adev, true);

	r = FUNC5(ring, FUNC9(adev) + 4 + 3);
	if (r) {
		FUNC0("amdgpu: cp failed to lock ring (%d).\n", r);
		return r;
	}

	FUNC7(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC7(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	FUNC7(ring, FUNC1(PACKET3_CONTEXT_CONTROL, 1));
	FUNC7(ring, 0x80000000);
	FUNC7(ring, 0x80000000);

	for (sect = gfx9_cs_data; sect->section != NULL; ++sect) {
		for (ext = sect->section; ext->extent != NULL; ++ext) {
			if (sect->id == SECT_CONTEXT) {
				FUNC7(ring,
				       FUNC1(PACKET3_SET_CONTEXT_REG,
					       ext->reg_count));
				FUNC7(ring,
				       ext->reg_index - PACKET3_SET_CONTEXT_REG_START);
				for (i = 0; i < ext->reg_count; i++)
					FUNC7(ring, ext->extent[i]);
			}
		}
	}

	FUNC7(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC7(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

	FUNC7(ring, FUNC1(PACKET3_CLEAR_STATE, 0));
	FUNC7(ring, 0);

	FUNC7(ring, FUNC1(PACKET3_SET_BASE, 2));
	FUNC7(ring, FUNC2(CE_PARTITION_BASE));
	FUNC7(ring, 0x8000);
	FUNC7(ring, 0x8000);

	FUNC7(ring, FUNC1(PACKET3_SET_UCONFIG_REG,1));
	tmp = (PACKET3_SET_UCONFIG_REG_INDEX_TYPE |
		(FUNC3(GC, 0, mmVGT_INDEX_TYPE) - PACKET3_SET_UCONFIG_REG_START));
	FUNC7(ring, tmp);
	FUNC7(ring, 0);

	FUNC6(ring);

	return 0;
}