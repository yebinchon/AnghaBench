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
struct stm32_adc_priv {int dummy; } ;
struct stm32_adc_common {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct stm32_adc_common* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct stm32_adc_priv*) ; 
 struct stm32_adc_priv* FUNC8 (struct stm32_adc_common*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct stm32_adc_common *common = FUNC1(pdev);
	struct stm32_adc_priv *priv = FUNC8(common);

	FUNC3(&pdev->dev);
	FUNC0(&pdev->dev);
	FUNC7(pdev, priv);
	FUNC6(&pdev->dev);
	FUNC2(&pdev->dev);
	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	return 0;
}