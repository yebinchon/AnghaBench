#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct i40iw_hw {int dummy; } ;
struct TYPE_10__ {size_t sd_pd_index; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {scalar_t__ va; } ;
struct TYPE_6__ {int /*<<< orphan*/  pd_page_addr; TYPE_3__ pd_entry_virt_mem; struct i40iw_hmc_pd_entry* pd_entry; } ;
struct TYPE_7__ {TYPE_5__ bp; TYPE_1__ pd_table; } ;
struct i40iw_hmc_sd_entry {int entry_type; TYPE_2__ u; int /*<<< orphan*/  valid; } ;
struct i40iw_hmc_pd_entry {int dummy; } ;
struct TYPE_9__ {struct i40iw_hmc_sd_entry* sd_entry; } ;
struct i40iw_hmc_info {TYPE_4__ sd_table; } ;
struct i40iw_dma_mem {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
typedef  enum i40iw_sd_entry_type { ____Placeholder_i40iw_sd_entry_type } i40iw_sd_entry_type ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_HMC_PAGED_BP_SIZE ; 
 int /*<<< orphan*/  I40IW_HMC_PD_BP_BUF_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ I40IW_SD_TYPE_DIRECT ; 
 int I40IW_SD_TYPE_PAGED ; 
 int FUNC2 (struct i40iw_hw*,struct i40iw_dma_mem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40iw_hw*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_hw*,struct i40iw_dma_mem*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct i40iw_dma_mem*,int) ; 

enum i40iw_status_code FUNC6(struct i40iw_hw *hw,
						struct i40iw_hmc_info *hmc_info,
						u32 sd_index,
						enum i40iw_sd_entry_type type,
						u64 direct_mode_sz)
{
	enum i40iw_status_code ret_code = 0;
	struct i40iw_hmc_sd_entry *sd_entry;
	bool dma_mem_alloc_done = false;
	struct i40iw_dma_mem mem;
	u64 alloc_len;

	sd_entry = &hmc_info->sd_table.sd_entry[sd_index];
	if (!sd_entry->valid) {
		if (type == I40IW_SD_TYPE_PAGED)
			alloc_len = I40IW_HMC_PAGED_BP_SIZE;
		else
			alloc_len = direct_mode_sz;

		/* allocate a 4K pd page or 2M backing page */
		ret_code = FUNC2(hw, &mem, alloc_len,
						  I40IW_HMC_PD_BP_BUF_ALIGNMENT);
		if (ret_code)
			goto exit;
		dma_mem_alloc_done = true;
		if (type == I40IW_SD_TYPE_PAGED) {
			ret_code = FUNC3(hw,
							   &sd_entry->u.pd_table.pd_entry_virt_mem,
							   sizeof(struct i40iw_hmc_pd_entry) * 512);
			if (ret_code)
				goto exit;
			sd_entry->u.pd_table.pd_entry = (struct i40iw_hmc_pd_entry *)
							 sd_entry->u.pd_table.pd_entry_virt_mem.va;

			FUNC5(&sd_entry->u.pd_table.pd_page_addr, &mem, sizeof(struct i40iw_dma_mem));
		} else {
			FUNC5(&sd_entry->u.bp.addr, &mem, sizeof(struct i40iw_dma_mem));
			sd_entry->u.bp.sd_pd_index = sd_index;
		}

		hmc_info->sd_table.sd_entry[sd_index].entry_type = type;

		FUNC1(&hmc_info->sd_table);
	}
	if (sd_entry->entry_type == I40IW_SD_TYPE_DIRECT)
		FUNC0(&sd_entry->u.bp);
exit:
	if (ret_code)
		if (dma_mem_alloc_done)
			FUNC4(hw, &mem);

	return ret_code;
}