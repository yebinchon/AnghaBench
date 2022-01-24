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
struct sun4i_tcon {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  SUN4I_TCON_GINT0_REG ; 
 int SUN4I_TCON_GINT0_TCON0_TRI_FINISH_ENABLE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct sun4i_tcon *tcon, bool enable)
{
	u32 mask, val = 0;

	FUNC0("%sabling VBLANK interrupt\n", enable ? "En" : "Dis");

	mask = FUNC1(0) |
		FUNC1(1) |
		SUN4I_TCON_GINT0_TCON0_TRI_FINISH_ENABLE;

	if (enable)
		val = mask;

	FUNC2(tcon->regs, SUN4I_TCON_GINT0_REG, mask, val);
}