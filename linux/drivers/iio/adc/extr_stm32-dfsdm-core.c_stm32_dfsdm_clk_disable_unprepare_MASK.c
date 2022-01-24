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
struct stm32_dfsdm {int dummy; } ;
struct dfsdm_priv {scalar_t__ clk; scalar_t__ aclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct dfsdm_priv* FUNC1 (struct stm32_dfsdm*) ; 

__attribute__((used)) static void FUNC2(struct stm32_dfsdm *dfsdm)
{
	struct dfsdm_priv *priv = FUNC1(dfsdm);

	if (priv->aclk)
		FUNC0(priv->aclk);
	FUNC0(priv->clk);
}