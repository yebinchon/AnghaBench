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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int* reg_list; int reg_list_size; int save_restore_gpu_addr; int* sr_ptr; int clear_state_size; int clear_state_gpu_addr; int* cs_ptr; int cp_table_size; int cp_table_gpu_addr; int /*<<< orphan*/ * cp_table_obj; int /*<<< orphan*/  cp_table_ptr; int /*<<< orphan*/ * clear_state_obj; int /*<<< orphan*/ * save_restore_obj; struct cs_section_def* cs_data; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ rlc; int /*<<< orphan*/  dev; } ;
struct cs_section_def {TYPE_1__* section; } ;
struct TYPE_3__ {int* extent; int reg_count; int reg_index; } ;

/* Variables and functions */
 scalar_t__ CHIP_BONAIRE ; 
 scalar_t__ CHIP_TAHITI ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RLC_CLEAR_STATE_END_MARKER ; 
 int RLC_SAVE_RESTORE_LIST_END_MARKER ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int volatile*) ; 
 int FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct radeon_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int volatile*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int) ; 

int FUNC17(struct radeon_device *rdev)
{
	const u32 *src_ptr;
	volatile u32 *dst_ptr;
	u32 dws, data, i, j, k, reg_num;
	u32 reg_list_num, reg_list_hdr_blk_index, reg_list_blk_index = 0;
	u64 reg_list_mc_addr;
	const struct cs_section_def *cs_data;
	int r;

	src_ptr = rdev->rlc.reg_list;
	dws = rdev->rlc.reg_list_size;
	if (rdev->family >= CHIP_BONAIRE) {
		dws += (5 * 16) + 48 + 48 + 64;
	}
	cs_data = rdev->rlc.cs_data;

	if (src_ptr) {
		/* save restore block */
		if (rdev->rlc.save_restore_obj == NULL) {
			r = FUNC6(rdev, dws * 4, PAGE_SIZE, true,
					     RADEON_GEM_DOMAIN_VRAM, 0, NULL,
					     NULL, &rdev->rlc.save_restore_obj);
			if (r) {
				FUNC4(rdev->dev, "(%d) create RLC sr bo failed\n", r);
				return r;
			}
		}

		r = FUNC10(rdev->rlc.save_restore_obj, false);
		if (FUNC15(r != 0)) {
			FUNC14(rdev);
			return r;
		}
		r = FUNC9(rdev->rlc.save_restore_obj, RADEON_GEM_DOMAIN_VRAM,
				  &rdev->rlc.save_restore_gpu_addr);
		if (r) {
			FUNC11(rdev->rlc.save_restore_obj);
			FUNC4(rdev->dev, "(%d) pin RLC sr bo failed\n", r);
			FUNC14(rdev);
			return r;
		}

		r = FUNC7(rdev->rlc.save_restore_obj, (void **)&rdev->rlc.sr_ptr);
		if (r) {
			FUNC4(rdev->dev, "(%d) map RLC sr bo failed\n", r);
			FUNC14(rdev);
			return r;
		}
		/* write the sr buffer */
		dst_ptr = rdev->rlc.sr_ptr;
		if (rdev->family >= CHIP_TAHITI) {
			/* SI */
			for (i = 0; i < rdev->rlc.reg_list_size; i++)
				dst_ptr[i] = FUNC3(src_ptr[i]);
		} else {
			/* ON/LN/TN */
			/* format:
			 * dw0: (reg2 << 16) | reg1
			 * dw1: reg1 save space
			 * dw2: reg2 save space
			 */
			for (i = 0; i < dws; i++) {
				data = src_ptr[i] >> 2;
				i++;
				if (i < dws)
					data |= (src_ptr[i] >> 2) << 16;
				j = (((i - 1) * 3) / 2);
				dst_ptr[j] = FUNC3(data);
			}
			j = ((i * 3) / 2);
			dst_ptr[j] = FUNC3(RLC_SAVE_RESTORE_LIST_END_MARKER);
		}
		FUNC8(rdev->rlc.save_restore_obj);
		FUNC11(rdev->rlc.save_restore_obj);
	}

	if (cs_data) {
		/* clear state block */
		if (rdev->family >= CHIP_BONAIRE) {
			rdev->rlc.clear_state_size = dws = FUNC1(rdev);
		} else if (rdev->family >= CHIP_TAHITI) {
			rdev->rlc.clear_state_size = FUNC13(rdev);
			dws = rdev->rlc.clear_state_size + (256 / 4);
		} else {
			reg_list_num = 0;
			dws = 0;
			for (i = 0; cs_data[i].section != NULL; i++) {
				for (j = 0; cs_data[i].section[j].extent != NULL; j++) {
					reg_list_num++;
					dws += cs_data[i].section[j].reg_count;
				}
			}
			reg_list_blk_index = (3 * reg_list_num + 2);
			dws += reg_list_blk_index;
			rdev->rlc.clear_state_size = dws;
		}

		if (rdev->rlc.clear_state_obj == NULL) {
			r = FUNC6(rdev, dws * 4, PAGE_SIZE, true,
					     RADEON_GEM_DOMAIN_VRAM, 0, NULL,
					     NULL, &rdev->rlc.clear_state_obj);
			if (r) {
				FUNC4(rdev->dev, "(%d) create RLC c bo failed\n", r);
				FUNC14(rdev);
				return r;
			}
		}
		r = FUNC10(rdev->rlc.clear_state_obj, false);
		if (FUNC15(r != 0)) {
			FUNC14(rdev);
			return r;
		}
		r = FUNC9(rdev->rlc.clear_state_obj, RADEON_GEM_DOMAIN_VRAM,
				  &rdev->rlc.clear_state_gpu_addr);
		if (r) {
			FUNC11(rdev->rlc.clear_state_obj);
			FUNC4(rdev->dev, "(%d) pin RLC c bo failed\n", r);
			FUNC14(rdev);
			return r;
		}

		r = FUNC7(rdev->rlc.clear_state_obj, (void **)&rdev->rlc.cs_ptr);
		if (r) {
			FUNC4(rdev->dev, "(%d) map RLC c bo failed\n", r);
			FUNC14(rdev);
			return r;
		}
		/* set up the cs buffer */
		dst_ptr = rdev->rlc.cs_ptr;
		if (rdev->family >= CHIP_BONAIRE) {
			FUNC0(rdev, dst_ptr);
		} else if (rdev->family >= CHIP_TAHITI) {
			reg_list_mc_addr = rdev->rlc.clear_state_gpu_addr + 256;
			dst_ptr[0] = FUNC3(FUNC16(reg_list_mc_addr));
			dst_ptr[1] = FUNC3(FUNC5(reg_list_mc_addr));
			dst_ptr[2] = FUNC3(rdev->rlc.clear_state_size);
			FUNC12(rdev, &dst_ptr[(256/4)]);
		} else {
			reg_list_hdr_blk_index = 0;
			reg_list_mc_addr = rdev->rlc.clear_state_gpu_addr + (reg_list_blk_index * 4);
			data = FUNC16(reg_list_mc_addr);
			dst_ptr[reg_list_hdr_blk_index] = FUNC3(data);
			reg_list_hdr_blk_index++;
			for (i = 0; cs_data[i].section != NULL; i++) {
				for (j = 0; cs_data[i].section[j].extent != NULL; j++) {
					reg_num = cs_data[i].section[j].reg_count;
					data = reg_list_mc_addr & 0xffffffff;
					dst_ptr[reg_list_hdr_blk_index] = FUNC3(data);
					reg_list_hdr_blk_index++;

					data = (cs_data[i].section[j].reg_index * 4) & 0xffffffff;
					dst_ptr[reg_list_hdr_blk_index] = FUNC3(data);
					reg_list_hdr_blk_index++;

					data = 0x08000000 | (reg_num * 4);
					dst_ptr[reg_list_hdr_blk_index] = FUNC3(data);
					reg_list_hdr_blk_index++;

					for (k = 0; k < reg_num; k++) {
						data = cs_data[i].section[j].extent[k];
						dst_ptr[reg_list_blk_index + k] = FUNC3(data);
					}
					reg_list_mc_addr += reg_num * 4;
					reg_list_blk_index += reg_num;
				}
			}
			dst_ptr[reg_list_hdr_blk_index] = FUNC3(RLC_CLEAR_STATE_END_MARKER);
		}
		FUNC8(rdev->rlc.clear_state_obj);
		FUNC11(rdev->rlc.clear_state_obj);
	}

	if (rdev->rlc.cp_table_size) {
		if (rdev->rlc.cp_table_obj == NULL) {
			r = FUNC6(rdev, rdev->rlc.cp_table_size,
					     PAGE_SIZE, true,
					     RADEON_GEM_DOMAIN_VRAM, 0, NULL,
					     NULL, &rdev->rlc.cp_table_obj);
			if (r) {
				FUNC4(rdev->dev, "(%d) create RLC cp table bo failed\n", r);
				FUNC14(rdev);
				return r;
			}
		}

		r = FUNC10(rdev->rlc.cp_table_obj, false);
		if (FUNC15(r != 0)) {
			FUNC4(rdev->dev, "(%d) reserve RLC cp table bo failed\n", r);
			FUNC14(rdev);
			return r;
		}
		r = FUNC9(rdev->rlc.cp_table_obj, RADEON_GEM_DOMAIN_VRAM,
				  &rdev->rlc.cp_table_gpu_addr);
		if (r) {
			FUNC11(rdev->rlc.cp_table_obj);
			FUNC4(rdev->dev, "(%d) pin RLC cp_table bo failed\n", r);
			FUNC14(rdev);
			return r;
		}
		r = FUNC7(rdev->rlc.cp_table_obj, (void **)&rdev->rlc.cp_table_ptr);
		if (r) {
			FUNC4(rdev->dev, "(%d) map RLC cp table bo failed\n", r);
			FUNC14(rdev);
			return r;
		}

		FUNC2(rdev);

		FUNC8(rdev->rlc.cp_table_obj);
		FUNC11(rdev->rlc.cp_table_obj);

	}

	return 0;
}