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
typedef  int u64 ;
struct mlx4_mtt {int dummy; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct mlx4_mtt*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_ib_dev *dev,
					struct mlx4_mtt *mtt,
					u64 mtt_size, u64 mtt_shift, u64 len,
					u64 cur_start_addr, u64 *pages,
					int *start_index, int *npages)
{
	u64 cur_end_addr = cur_start_addr + len;
	u64 cur_end_addr_aligned = 0;
	u64 mtt_entries;
	int err = 0;
	int k;

	len += (cur_start_addr & (mtt_size - 1ULL));
	cur_end_addr_aligned = FUNC3(cur_end_addr, mtt_size);
	len += (cur_end_addr_aligned - cur_end_addr);
	if (len & (mtt_size - 1ULL)) {
		FUNC1("write_block: len %llx is not aligned to mtt_size %llx\n",
			len, mtt_size);
		return -EINVAL;
	}

	mtt_entries = (len >> mtt_shift);

	/*
	 * Align the MTT start address to the mtt_size.
	 * Required to handle cases when the MR starts in the middle of an MTT
	 * record. Was not required in old code since the physical addresses
	 * provided by the dma subsystem were page aligned, which was also the
	 * MTT size.
	 */
	cur_start_addr = FUNC2(cur_start_addr, mtt_size);
	/* A new block is started ... */
	for (k = 0; k < mtt_entries; ++k) {
		pages[*npages] = cur_start_addr + (mtt_size * k);
		(*npages)++;
		/*
		 * Be friendly to mlx4_write_mtt() and pass it chunks of
		 * appropriate size.
		 */
		if (*npages == PAGE_SIZE / sizeof(u64)) {
			err = FUNC0(dev->dev, mtt, *start_index,
					     *npages, pages);
			if (err)
				return err;

			(*start_index) += *npages;
			*npages = 0;
		}
	}

	return 0;
}