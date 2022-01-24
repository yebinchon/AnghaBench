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
typedef  int u32 ;
struct mv_cesa_tdma_desc {int flags; void* dst; void* src; int /*<<< orphan*/  byte_cnt; } ;
struct mv_cesa_tdma_chain {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CESA_TDMA_DATA ; 
 int CESA_TDMA_DST_IN_SRAM ; 
 int CESA_TDMA_SRC_IN_SRAM ; 
 scalar_t__ FUNC1 (struct mv_cesa_tdma_desc*) ; 
 int FUNC2 (struct mv_cesa_tdma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mv_cesa_tdma_desc* FUNC4 (struct mv_cesa_tdma_chain*,int /*<<< orphan*/ ) ; 

int FUNC5(struct mv_cesa_tdma_chain *chain,
				  dma_addr_t dst, dma_addr_t src, u32 size,
				  u32 flags, gfp_t gfp_flags)
{
	struct mv_cesa_tdma_desc *tdma;

	tdma = FUNC4(chain, gfp_flags);
	if (FUNC1(tdma))
		return FUNC2(tdma);

	tdma->byte_cnt = FUNC3(size | FUNC0(31));
	tdma->src = src;
	tdma->dst = dst;

	flags &= (CESA_TDMA_DST_IN_SRAM | CESA_TDMA_SRC_IN_SRAM);
	tdma->flags = flags | CESA_TDMA_DATA;

	return 0;
}