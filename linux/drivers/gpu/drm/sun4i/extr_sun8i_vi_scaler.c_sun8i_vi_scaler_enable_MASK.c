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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;
struct sun8i_mixer {TYPE_1__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SUN8I_SCALER_VSU_CTRL_COEFF_RDY ; 
 int SUN8I_SCALER_VSU_CTRL_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sun8i_mixer*,int) ; 

void FUNC3(struct sun8i_mixer *mixer, int layer, bool enable)
{
	u32 val, base;

	base = FUNC2(mixer, layer);

	if (enable)
		val = SUN8I_SCALER_VSU_CTRL_EN |
		      SUN8I_SCALER_VSU_CTRL_COEFF_RDY;
	else
		val = 0;

	FUNC1(mixer->engine.regs,
		     FUNC0(base), val);
}