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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  enum pl330_cond { ____Placeholder_pl330_cond } pl330_cond ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int ALWAYS ; 
 int BURST ; 
#define  DMA_DEV_TO_MEM 130 
#define  DMA_MEM_TO_DEV 129 
#define  DMA_MEM_TO_MEM 128 
 int SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(unsigned int dry_run, u8 buf[],
	enum pl330_cond cond, enum dma_transfer_direction direction,
	u8 peri)
{
	int off = 0;

	switch (direction) {
	case DMA_MEM_TO_MEM:
		/* fall through */
	case DMA_MEM_TO_DEV:
		off += FUNC1(dry_run, &buf[off], cond);
		break;

	case DMA_DEV_TO_MEM:
		if (cond == ALWAYS) {
			off += FUNC2(dry_run, &buf[off], SINGLE,
				peri);
			off += FUNC2(dry_run, &buf[off], BURST,
				peri);
		} else {
			off += FUNC2(dry_run, &buf[off], cond,
				peri);
		}
		break;

	default:
		/* this code should be unreachable */
		FUNC0(1);
		break;
	}

	return off;
}