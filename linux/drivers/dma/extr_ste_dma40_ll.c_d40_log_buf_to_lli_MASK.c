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
typedef  int /*<<< orphan*/  u32 ;
struct d40_log_lli {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 unsigned int LLI_ADDR_INC ; 
 int /*<<< orphan*/  FUNC0 (struct d40_log_lli*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct d40_log_lli *FUNC2(struct d40_log_lli *lli_sg,
				       dma_addr_t addr,
				       int size,
				       u32 lcsp13, /* src or dst*/
				       u32 data_width1,
				       u32 data_width2,
				       unsigned int flags)
{
	bool addr_inc = flags & LLI_ADDR_INC;
	struct d40_log_lli *lli = lli_sg;
	int size_rest = size;
	int size_seg = 0;

	do {
		size_seg = FUNC1(size_rest, data_width1, data_width2);
		size_rest -= size_seg;

		FUNC0(lli,
				 addr,
				 size_seg,
				 lcsp13, data_width1,
				 flags);
		if (addr_inc)
			addr += size_seg;
		lli++;
	} while (size_rest);

	return lli;
}