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
struct stm32_dac_priv {int /*<<< orphan*/  vref; int /*<<< orphan*/  pclk; } ;
struct stm32_dac_common {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct stm32_dac_common* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct stm32_dac_priv* FUNC4 (struct stm32_dac_common*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct stm32_dac_common *common = FUNC2(pdev);
	struct stm32_dac_priv *priv = FUNC4(common);

	FUNC1(&pdev->dev);
	FUNC0(priv->pclk);
	FUNC3(priv->vref);

	return 0;
}