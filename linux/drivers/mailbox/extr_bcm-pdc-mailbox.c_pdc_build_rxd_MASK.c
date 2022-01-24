#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pdc_state {size_t rxout; int /*<<< orphan*/  nrxpost; int /*<<< orphan*/  pdc_idx; struct dma64dd* rxd_64; TYPE_1__* pdev; } ;
struct dma64dd {void* ctrl2; void* ctrl1; void* addrhigh; void* addrlow; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(struct pdc_state *pdcs, dma_addr_t dma_addr,
	      u32 buf_len, u32 flags)
{
	struct device *dev = &pdcs->pdev->dev;
	struct dma64dd *rxd = &pdcs->rxd_64[pdcs->rxout];

	FUNC2(dev,
		"Writing rx descriptor for PDC %u at index %u with length %u. flags %#x\n",
		pdcs->pdc_idx, pdcs->rxout, buf_len, flags);

	rxd->addrlow = FUNC1(FUNC3(dma_addr));
	rxd->addrhigh = FUNC1(FUNC4(dma_addr));
	rxd->ctrl1 = FUNC1(flags);
	rxd->ctrl2 = FUNC1(buf_len);

	/* bump ring index and return */
	pdcs->rxout = FUNC0(pdcs->rxout, pdcs->nrxpost);
}