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
struct mmp_tdma_chan {int /*<<< orphan*/  desc_arr_phys; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmp_tdma_chan*,int /*<<< orphan*/ ) ; 
 struct mmp_tdma_chan* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_cookie_t FUNC2(struct dma_async_tx_descriptor *tx)
{
	struct mmp_tdma_chan *tdmac = FUNC1(tx->chan);

	FUNC0(tdmac, tdmac->desc_arr_phys);

	return 0;
}