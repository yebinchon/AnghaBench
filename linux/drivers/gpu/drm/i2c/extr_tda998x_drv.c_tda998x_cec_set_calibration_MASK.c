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
typedef  int u8 ;
struct tda998x_priv {int dummy; } ;

/* Variables and functions */
 int CEC_CAL_XOSC_CTRL1_ENA_CAL ; 
 int CEC_CLK_FRO ; 
 int CEC_DES_FREQ2_DIS_AUTOCAL ; 
 int /*<<< orphan*/  CEC_ENAMODS_DIS_FRO ; 
 int REG_CEC_CAL_XOSC_CTRL1 ; 
 int REG_CEC_CLK ; 
 int REG_CEC_DES_FREQ2 ; 
 int /*<<< orphan*/  FUNC0 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct tda998x_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tda998x_priv*,int,int) ; 

__attribute__((used)) static void FUNC3(struct tda998x_priv *priv, bool enable)
{
	if (enable) {
		u8 val;

		FUNC2(priv, 0xf3, 0xc0);
		FUNC2(priv, 0xf4, 0xd4);

		/* Enable automatic calibration mode */
		val = FUNC1(priv, REG_CEC_DES_FREQ2);
		val &= ~CEC_DES_FREQ2_DIS_AUTOCAL;
		FUNC2(priv, REG_CEC_DES_FREQ2, val);

		/* Enable free running oscillator */
		FUNC2(priv, REG_CEC_CLK, CEC_CLK_FRO);
		FUNC0(priv, CEC_ENAMODS_DIS_FRO, false);

		FUNC2(priv, REG_CEC_CAL_XOSC_CTRL1,
			  CEC_CAL_XOSC_CTRL1_ENA_CAL);
	} else {
		FUNC2(priv, REG_CEC_CAL_XOSC_CTRL1, 0);
	}
}