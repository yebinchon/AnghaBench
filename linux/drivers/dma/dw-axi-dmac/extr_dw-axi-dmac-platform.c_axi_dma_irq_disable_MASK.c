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
struct axi_dma_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CFG ; 
 int /*<<< orphan*/  INT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct axi_dma_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct axi_dma_chip *chip)
{
	u32 val;

	val = FUNC0(chip, DMAC_CFG);
	val &= ~INT_EN_MASK;
	FUNC1(chip, DMAC_CFG, val);
}