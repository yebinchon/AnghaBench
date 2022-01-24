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
struct TYPE_2__ {int pes; } ;
struct safexcel_crypto_priv {TYPE_1__ config; } ;

/* Variables and functions */
 int EIP197_NUM_OF_SCRATCH_BLOCKS ; 
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int EIP197_PE_ICE_RAM_CTRL_FPP_PROG_EN ; 
 scalar_t__ FUNC6 (int) ; 
 int EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_ACCESS ; 
 int EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_TIMER ; 
 int EIP197_PE_ICE_SCRATCH_CTRL_SCRATCH_ACCESS ; 
 int EIP197_PE_ICE_SCRATCH_CTRL_TIMER_EN ; 
 scalar_t__ FUNC7 (int) ; 
 int EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR ; 
 int EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR ; 
 int EIP197_PE_ICE_x_CTRL_SW_RESET ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct safexcel_crypto_priv *priv)
{
	int pe, i;
	u32 val;

	for (pe = 0; pe < priv->config.pes; pe++) {
		/* Configure the token FIFO's */
		FUNC9(3, FUNC0(priv) + FUNC4(pe));
		FUNC9(0, FUNC0(priv) + FUNC2(pe));

		/* Clear the ICE scratchpad memory */
		val = FUNC8(FUNC0(priv) + FUNC6(pe));
		val |= EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_TIMER |
		       EIP197_PE_ICE_SCRATCH_CTRL_TIMER_EN |
		       EIP197_PE_ICE_SCRATCH_CTRL_SCRATCH_ACCESS |
		       EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_ACCESS;
		FUNC9(val, FUNC0(priv) + FUNC6(pe));

		/* clear the scratchpad RAM using 32 bit writes only */
		for (i = 0; i < EIP197_NUM_OF_SCRATCH_BLOCKS; i++)
			FUNC9(0, FUNC0(priv) +
				  FUNC7(pe) + (i << 2));

		/* Reset the IFPP engine to make its program mem accessible */
		FUNC9(EIP197_PE_ICE_x_CTRL_SW_RESET |
		       EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR |
		       EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR,
		       FUNC0(priv) + FUNC1(pe));

		/* Reset the IPUE engine to make its program mem accessible */
		FUNC9(EIP197_PE_ICE_x_CTRL_SW_RESET |
		       EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR |
		       EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR,
		       FUNC0(priv) + FUNC3(pe));

		/* Enable access to all IFPP program memories */
		FUNC9(EIP197_PE_ICE_RAM_CTRL_FPP_PROG_EN,
		       FUNC0(priv) + FUNC5(pe));
	}

}