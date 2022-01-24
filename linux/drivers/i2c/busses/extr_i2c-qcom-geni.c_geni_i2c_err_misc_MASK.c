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
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct geni_i2c_dev {TYPE_1__ se; } ;

/* Variables and functions */
 scalar_t__ SE_DMA_RX_IRQ_STAT ; 
 scalar_t__ SE_DMA_TX_IRQ_STAT ; 
 scalar_t__ SE_GENI_DMA_MODE_EN ; 
 scalar_t__ SE_GENI_IOS ; 
 scalar_t__ SE_GENI_M_CMD0 ; 
 scalar_t__ SE_GENI_M_IRQ_STATUS ; 
 scalar_t__ SE_GENI_RX_FIFO_STATUS ; 
 scalar_t__ SE_GENI_STATUS ; 
 scalar_t__ SE_GENI_TX_FIFO_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct geni_i2c_dev *gi2c)
{
	u32 m_cmd = FUNC1(gi2c->se.base + SE_GENI_M_CMD0);
	u32 m_stat = FUNC1(gi2c->se.base + SE_GENI_M_IRQ_STATUS);
	u32 geni_s = FUNC1(gi2c->se.base + SE_GENI_STATUS);
	u32 geni_ios = FUNC1(gi2c->se.base + SE_GENI_IOS);
	u32 dma = FUNC1(gi2c->se.base + SE_GENI_DMA_MODE_EN);
	u32 rx_st, tx_st;

	if (dma) {
		rx_st = FUNC1(gi2c->se.base + SE_DMA_RX_IRQ_STAT);
		tx_st = FUNC1(gi2c->se.base + SE_DMA_TX_IRQ_STAT);
	} else {
		rx_st = FUNC1(gi2c->se.base + SE_GENI_RX_FIFO_STATUS);
		tx_st = FUNC1(gi2c->se.base + SE_GENI_TX_FIFO_STATUS);
	}
	FUNC0(gi2c->se.dev, "DMA:%d tx_stat:0x%x, rx_stat:0x%x, irq-stat:0x%x\n",
		dma, tx_st, rx_st, m_stat);
	FUNC0(gi2c->se.dev, "m_cmd:0x%x, geni_status:0x%x, geni_ios:0x%x\n",
		m_cmd, geni_s, geni_ios);
}