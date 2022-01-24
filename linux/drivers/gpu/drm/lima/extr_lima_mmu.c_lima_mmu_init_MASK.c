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
typedef  int u32 ;
struct lima_ip {scalar_t__ id; int /*<<< orphan*/  irq; struct lima_device* dev; } ;
struct lima_device {TYPE_2__* empty_vm; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int dma; } ;
struct TYPE_4__ {TYPE_1__ pd; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  LIMA_MMU_COMMAND ; 
 int LIMA_MMU_COMMAND_ENABLE_PAGING ; 
 int LIMA_MMU_COMMAND_HARD_RESET ; 
 int /*<<< orphan*/  LIMA_MMU_DTE_ADDR ; 
 int /*<<< orphan*/  LIMA_MMU_INT_MASK ; 
 int LIMA_MMU_INT_PAGE_FAULT ; 
 int LIMA_MMU_INT_READ_BUS_ERROR ; 
 int /*<<< orphan*/  LIMA_MMU_STATUS ; 
 int LIMA_MMU_STATUS_PAGING_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lima_ip*) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_ip*) ; 
 scalar_t__ lima_ip_ppmmu_bcast ; 
 int /*<<< orphan*/  lima_mmu_irq_handler ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;
	int err;
	u32 v;

	if (ip->id == lima_ip_ppmmu_bcast)
		return 0;

	FUNC5(LIMA_MMU_DTE_ADDR, 0xCAFEBABE);
	if (FUNC4(LIMA_MMU_DTE_ADDR) != 0xCAFEB000) {
		FUNC0(dev->dev, "mmu %s dte write test fail\n", FUNC2(ip));
		return -EIO;
	}

	FUNC5(LIMA_MMU_COMMAND, LIMA_MMU_COMMAND_HARD_RESET);
	err = FUNC3(LIMA_MMU_COMMAND_HARD_RESET,
				    LIMA_MMU_DTE_ADDR, v, v == 0);
	if (err)
		return err;

	err = FUNC1(dev->dev, ip->irq, lima_mmu_irq_handler,
			       IRQF_SHARED, FUNC2(ip), ip);
	if (err) {
		FUNC0(dev->dev, "mmu %s fail to request irq\n", FUNC2(ip));
		return err;
	}

	FUNC5(LIMA_MMU_INT_MASK, LIMA_MMU_INT_PAGE_FAULT | LIMA_MMU_INT_READ_BUS_ERROR);
	FUNC5(LIMA_MMU_DTE_ADDR, dev->empty_vm->pd.dma);
	return FUNC3(LIMA_MMU_COMMAND_ENABLE_PAGING,
				     LIMA_MMU_STATUS, v,
				     v & LIMA_MMU_STATUS_PAGING_ENABLED);
}