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
struct tda998x_priv {int dummy; } ;

/* Variables and functions */
 int AUDIO_DIV_SERCLK_8 ; 
 int /*<<< orphan*/  MAIN_CNTRL0_SR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_AUDIO_DIV ; 
 int /*<<< orphan*/  REG_BUFFER_OUT ; 
 int /*<<< orphan*/  REG_MAIN_CNTRL0 ; 
 int /*<<< orphan*/  REG_MUX_VP_VIP_OUT ; 
 int /*<<< orphan*/  REG_PLL_SCG1 ; 
 int /*<<< orphan*/  REG_PLL_SCG2 ; 
 int /*<<< orphan*/  REG_PLL_SCGN1 ; 
 int /*<<< orphan*/  REG_PLL_SCGN2 ; 
 int /*<<< orphan*/  REG_PLL_SCGR1 ; 
 int /*<<< orphan*/  REG_PLL_SCGR2 ; 
 int /*<<< orphan*/  REG_PLL_SERIAL_1 ; 
 int /*<<< orphan*/  REG_PLL_SERIAL_2 ; 
 int /*<<< orphan*/  REG_PLL_SERIAL_3 ; 
 int /*<<< orphan*/  REG_SEL_CLK ; 
 int /*<<< orphan*/  REG_SERIALIZER ; 
 int /*<<< orphan*/  REG_SOFTRESET ; 
 int SEL_CLK_ENA_SC_CLK ; 
 int SEL_CLK_SEL_CLK1 ; 
 int SOFTRESET_AUDIO ; 
 int SOFTRESET_I2C_MASTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct tda998x_priv *priv)
{
	/* reset audio and i2c master: */
	FUNC4(priv, REG_SOFTRESET, SOFTRESET_AUDIO | SOFTRESET_I2C_MASTER);
	FUNC1(50);
	FUNC4(priv, REG_SOFTRESET, 0);
	FUNC1(50);

	/* reset transmitter: */
	FUNC3(priv, REG_MAIN_CNTRL0, MAIN_CNTRL0_SR);
	FUNC2(priv, REG_MAIN_CNTRL0, MAIN_CNTRL0_SR);

	/* PLL registers common configuration */
	FUNC4(priv, REG_PLL_SERIAL_1, 0x00);
	FUNC4(priv, REG_PLL_SERIAL_2, FUNC0(1));
	FUNC4(priv, REG_PLL_SERIAL_3, 0x00);
	FUNC4(priv, REG_SERIALIZER,   0x00);
	FUNC4(priv, REG_BUFFER_OUT,   0x00);
	FUNC4(priv, REG_PLL_SCG1,     0x00);
	FUNC4(priv, REG_AUDIO_DIV,    AUDIO_DIV_SERCLK_8);
	FUNC4(priv, REG_SEL_CLK,      SEL_CLK_SEL_CLK1 | SEL_CLK_ENA_SC_CLK);
	FUNC4(priv, REG_PLL_SCGN1,    0xfa);
	FUNC4(priv, REG_PLL_SCGN2,    0x00);
	FUNC4(priv, REG_PLL_SCGR1,    0x5b);
	FUNC4(priv, REG_PLL_SCGR2,    0x00);
	FUNC4(priv, REG_PLL_SCG2,     0x10);

	/* Write the default value MUX register */
	FUNC4(priv, REG_MUX_VP_VIP_OUT, 0x24);
}