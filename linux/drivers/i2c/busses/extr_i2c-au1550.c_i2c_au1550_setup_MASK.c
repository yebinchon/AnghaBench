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
struct i2c_au1550_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_CTRL ; 
 unsigned long PSC_CTRL_DISABLE ; 
 unsigned long PSC_CTRL_ENABLE ; 
 unsigned long PSC_CTRL_SUSPEND ; 
 int /*<<< orphan*/  PSC_SEL ; 
 unsigned long PSC_SEL_PS_SMBUSMODE ; 
 int /*<<< orphan*/  PSC_SMBCFG ; 
 unsigned long PSC_SMBCFG_DD_DISABLE ; 
 unsigned long PSC_SMBCFG_DE_ENABLE ; 
 int /*<<< orphan*/  PSC_SMBCFG_DIV8 ; 
 unsigned long PSC_SMBCFG_RT_FIFO8 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PSC_SMBCFG_TT_FIFO8 ; 
 int /*<<< orphan*/  PSC_SMBMSK ; 
 unsigned long PSC_SMBMSK_ALLMASK ; 
 int /*<<< orphan*/  PSC_SMBSTAT ; 
 int PSC_SMBSTAT_SR ; 
 int /*<<< orphan*/  PSC_SMBTMR ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 unsigned long FUNC4 (int) ; 
 unsigned long FUNC5 (int) ; 
 unsigned long FUNC6 (int) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_au1550_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_au1550_data*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct i2c_au1550_data *priv)
{
	unsigned long cfg;

	FUNC9(priv, PSC_CTRL, PSC_CTRL_DISABLE);
	FUNC9(priv, PSC_SEL, PSC_SEL_PS_SMBUSMODE);
	FUNC9(priv, PSC_SMBCFG, 0);
	FUNC9(priv, PSC_CTRL, PSC_CTRL_ENABLE);
	while ((FUNC8(priv, PSC_SMBSTAT) & PSC_SMBSTAT_SR) == 0)
		FUNC10();

	cfg = PSC_SMBCFG_RT_FIFO8 | PSC_SMBCFG_TT_FIFO8 | PSC_SMBCFG_DD_DISABLE;
	FUNC9(priv, PSC_SMBCFG, cfg);

	/* Divide by 8 to get a 6.25 MHz clock.  The later protocol
	 * timings are based on this clock.
	 */
	cfg |= FUNC0(PSC_SMBCFG_DIV8);
	FUNC9(priv, PSC_SMBCFG, cfg);
	FUNC9(priv, PSC_SMBMSK, PSC_SMBMSK_ALLMASK);

	/* Set the protocol timer values.  See Table 71 in the
	 * Au1550 Data Book for standard timing values.
	 */
	FUNC9(priv, PSC_SMBTMR, FUNC7(0) | FUNC3(20) | \
		FUNC4(20) | FUNC5(20) | \
		FUNC6(20) | FUNC2(20) | \
		FUNC1(20));

	cfg |= PSC_SMBCFG_DE_ENABLE;
	FUNC9(priv, PSC_SMBCFG, cfg);
	while ((FUNC8(priv, PSC_SMBSTAT) & PSC_SMBSTAT_SR) == 0)
		FUNC10();

	FUNC9(priv, PSC_CTRL, PSC_CTRL_SUSPEND);
}