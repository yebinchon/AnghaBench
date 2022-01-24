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
typedef  scalar_t__ u32 ;
struct owl_dma_pchan {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct owl_dma_pchan *pchan, u32 reg,
			 u32 val, bool state)
{
	u32 regval;

	regval = FUNC0(pchan->base + reg);

	if (state)
		regval |= val;
	else
		regval &= ~val;

	FUNC1(val, pchan->base + reg);
}