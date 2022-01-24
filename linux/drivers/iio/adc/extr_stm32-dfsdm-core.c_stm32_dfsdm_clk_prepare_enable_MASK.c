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
struct dfsdm_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  aclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct dfsdm_priv* FUNC2 (struct stm32_dfsdm*) ; 

__attribute__((used)) static int FUNC3(struct stm32_dfsdm *dfsdm)
{
	struct dfsdm_priv *priv = FUNC2(dfsdm);
	int ret;

	ret = FUNC1(priv->clk);
	if (ret || !priv->aclk)
		return ret;

	ret = FUNC1(priv->aclk);
	if (ret)
		FUNC0(priv->clk);

	return ret;
}