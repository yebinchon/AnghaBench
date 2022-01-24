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
struct mcde {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MCDE_IMSCCHNL ; 
 scalar_t__ MCDE_IMSCOVL ; 
 scalar_t__ MCDE_IMSCPP ; 
 scalar_t__ MCDE_RISCHNL ; 
 scalar_t__ MCDE_RISOVL ; 
 scalar_t__ MCDE_RISPP ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

void FUNC1(struct mcde *mcde)
{
	/* Disable all IRQs */
	FUNC0(0, mcde->regs + MCDE_IMSCPP);
	FUNC0(0, mcde->regs + MCDE_IMSCOVL);
	FUNC0(0, mcde->regs + MCDE_IMSCCHNL);

	/* Clear any pending IRQs */
	FUNC0(0xFFFFFFFF, mcde->regs + MCDE_RISPP);
	FUNC0(0xFFFFFFFF, mcde->regs + MCDE_RISOVL);
	FUNC0(0xFFFFFFFF, mcde->regs + MCDE_RISCHNL);
}