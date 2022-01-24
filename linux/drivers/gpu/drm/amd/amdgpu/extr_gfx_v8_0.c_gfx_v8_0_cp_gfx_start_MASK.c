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
struct TYPE_5__ {int max_hw_contexts; TYPE_1__** rb_config; } ;
struct TYPE_6__ {TYPE_2__ config; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int raster_config; int raster_config_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PARTITION_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
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
 scalar_t__ SECT_CONTEXT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct amdgpu_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCP_DEVICE_ID ; 
 int /*<<< orphan*/  mmCP_ENDIAN_SWAP ; 
 int /*<<< orphan*/  mmCP_MAX_CONTEXT ; 
 int mmPA_SC_RASTER_CONFIG ; 
 struct cs_section_def* vi_cs_data ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = &adev->gfx.gfx_ring[0];
	const struct cs_section_def *sect = NULL;
	const struct cs_extent_def *ext = NULL;
	int r, i;

	/* init the CP */
	FUNC3(mmCP_MAX_CONTEXT, adev->gfx.config.max_hw_contexts - 1);
	FUNC3(mmCP_ENDIAN_SWAP, 0);
	FUNC3(mmCP_DEVICE_ID, 1);

	FUNC7(adev, true);

	r = FUNC4(ring, FUNC8(adev) + 4);
	if (r) {
		FUNC0("amdgpu: cp failed to lock ring (%d).\n", r);
		return r;
	}

	/* clear state buffer */
	FUNC6(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC6(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	FUNC6(ring, FUNC1(PACKET3_CONTEXT_CONTROL, 1));
	FUNC6(ring, 0x80000000);
	FUNC6(ring, 0x80000000);

	for (sect = vi_cs_data; sect->section != NULL; ++sect) {
		for (ext = sect->section; ext->extent != NULL; ++ext) {
			if (sect->id == SECT_CONTEXT) {
				FUNC6(ring,
				       FUNC1(PACKET3_SET_CONTEXT_REG,
					       ext->reg_count));
				FUNC6(ring,
				       ext->reg_index - PACKET3_SET_CONTEXT_REG_START);
				for (i = 0; i < ext->reg_count; i++)
					FUNC6(ring, ext->extent[i]);
			}
		}
	}

	FUNC6(ring, FUNC1(PACKET3_SET_CONTEXT_REG, 2));
	FUNC6(ring, mmPA_SC_RASTER_CONFIG - PACKET3_SET_CONTEXT_REG_START);
	FUNC6(ring, adev->gfx.config.rb_config[0][0].raster_config);
	FUNC6(ring, adev->gfx.config.rb_config[0][0].raster_config_1);

	FUNC6(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC6(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

	FUNC6(ring, FUNC1(PACKET3_CLEAR_STATE, 0));
	FUNC6(ring, 0);

	/* init the CE partitions */
	FUNC6(ring, FUNC1(PACKET3_SET_BASE, 2));
	FUNC6(ring, FUNC2(CE_PARTITION_BASE));
	FUNC6(ring, 0x8000);
	FUNC6(ring, 0x8000);

	FUNC5(ring);

	return 0;
}