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
struct zx_dma_phy {int idx; scalar_t__ base; } ;
struct zx_dma_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ REG_ZX_CFG_ERR_IRQ_RAW ; 
 scalar_t__ REG_ZX_CTRL ; 
 scalar_t__ REG_ZX_DST_ERR_IRQ_RAW ; 
 scalar_t__ REG_ZX_SRC_ERR_IRQ_RAW ; 
 scalar_t__ REG_ZX_TC_IRQ_RAW ; 
 int ZX_CH_ENABLE ; 
 int ZX_FORCE_CLOSE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct zx_dma_phy *phy, struct zx_dma_dev *d)
{
	u32 val = 0;

	val = FUNC0(phy->base + REG_ZX_CTRL);
	val &= ~ZX_CH_ENABLE;
	val |= ZX_FORCE_CLOSE;
	FUNC1(val, phy->base + REG_ZX_CTRL);

	val = 0x1 << phy->idx;
	FUNC1(val, d->base + REG_ZX_TC_IRQ_RAW);
	FUNC1(val, d->base + REG_ZX_SRC_ERR_IRQ_RAW);
	FUNC1(val, d->base + REG_ZX_DST_ERR_IRQ_RAW);
	FUNC1(val, d->base + REG_ZX_CFG_ERR_IRQ_RAW);
}