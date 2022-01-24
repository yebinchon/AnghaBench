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
struct moxart_chan {scalar_t__ base; } ;

/* Variables and functions */
 int APB_DMA_ENABLE ; 
 int APB_DMA_ERR_INT_EN ; 
 int APB_DMA_FIN_INT_EN ; 
 scalar_t__ REG_OFF_CTRL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct moxart_chan *ch)
{
	u32 ctrl;

	ctrl = FUNC0(ch->base + REG_OFF_CTRL);
	ctrl |= (APB_DMA_ENABLE | APB_DMA_FIN_INT_EN | APB_DMA_ERR_INT_EN);
	FUNC1(ctrl, ch->base + REG_OFF_CTRL);
}