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
struct k3_dma_phy {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CX_CFG ; 
 int /*<<< orphan*/  CX_CFG_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct k3_dma_phy *phy, bool on)
{
	u32 val = 0;

	if (on) {
		val = FUNC0(phy->base + CX_CFG);
		val |= CX_CFG_EN;
		FUNC1(val, phy->base + CX_CFG);
	} else {
		val = FUNC0(phy->base + CX_CFG);
		val &= ~CX_CFG_EN;
		FUNC1(val, phy->base + CX_CFG);
	}
}