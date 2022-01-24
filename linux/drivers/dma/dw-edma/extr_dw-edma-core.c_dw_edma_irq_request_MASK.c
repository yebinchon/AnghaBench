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
typedef  scalar_t__ u32 ;
struct dw_edma_chip {struct dw_edma* dw; struct device* dev; } ;
struct dw_edma {scalar_t__ wr_ch_cnt; scalar_t__ rd_ch_cnt; int nr_irqs; TYPE_1__* irq; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  msi; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  dw_edma_interrupt_common ; 
 int /*<<< orphan*/  dw_edma_interrupt_read ; 
 int /*<<< orphan*/  dw_edma_interrupt_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct dw_edma_chip *chip,
			       u32 *wr_alloc, u32 *rd_alloc)
{
	struct device *dev = chip->dev;
	struct dw_edma *dw = chip->dw;
	u32 wr_mask = 1;
	u32 rd_mask = 1;
	int i, err = 0;
	u32 ch_cnt;

	ch_cnt = dw->wr_ch_cnt + dw->rd_ch_cnt;

	if (dw->nr_irqs < 1)
		return -EINVAL;

	if (dw->nr_irqs == 1) {
		/* Common IRQ shared among all channels */
		err = FUNC4(FUNC3(FUNC5(dev), 0),
				  dw_edma_interrupt_common,
				  IRQF_SHARED, dw->name, &dw->irq[0]);
		if (err) {
			dw->nr_irqs = 0;
			return err;
		}

		FUNC2(FUNC3(FUNC5(dev), 0),
				   &dw->irq[0].msi);
	} else {
		/* Distribute IRQs equally among all channels */
		int tmp = dw->nr_irqs;

		while (tmp && (*wr_alloc + *rd_alloc) < ch_cnt) {
			FUNC1(&tmp, wr_alloc, dw->wr_ch_cnt);
			FUNC1(&tmp, rd_alloc, dw->rd_ch_cnt);
		}

		FUNC0(&wr_mask, *wr_alloc, dw->wr_ch_cnt);
		FUNC0(&rd_mask, *rd_alloc, dw->rd_ch_cnt);

		for (i = 0; i < (*wr_alloc + *rd_alloc); i++) {
			err = FUNC4(FUNC3(FUNC5(dev), i),
					  i < *wr_alloc ?
						dw_edma_interrupt_write :
						dw_edma_interrupt_read,
					  IRQF_SHARED, dw->name,
					  &dw->irq[i]);
			if (err) {
				dw->nr_irqs = i;
				return err;
			}

			FUNC2(FUNC3(FUNC5(dev), i),
					   &dw->irq[i].msi);
		}

		dw->nr_irqs = i;
	}

	return err;
}