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
struct mmp_tdma_chan {scalar_t__ reg_base; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 scalar_t__ TDCR ; 
 int TDCR_FETCHND ; 
 scalar_t__ TDNDPR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mmp_tdma_chan *tdmac, dma_addr_t phys)
{
	FUNC1(phys, tdmac->reg_base + TDNDPR);
	FUNC1(FUNC0(tdmac->reg_base + TDCR) | TDCR_FETCHND,
					tdmac->reg_base + TDCR);
}