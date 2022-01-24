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
typedef  size_t u32 ;
struct stm32_lptim_trigger {int /*<<< orphan*/  trg; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct stm32_lptim_trigger* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct stm32_lptim_trigger*) ; 
 int FUNC4 (struct stm32_lptim_trigger*) ; 
 int /*<<< orphan*/ * stm32_lptim_triggers ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct stm32_lptim_trigger *priv;
	u32 index;
	int ret;

	priv = FUNC1(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (FUNC2(pdev->dev.of_node, "reg", &index))
		return -EINVAL;

	if (index >= FUNC0(stm32_lptim_triggers))
		return -EINVAL;

	priv->dev = &pdev->dev;
	priv->trg = stm32_lptim_triggers[index];

	ret = FUNC4(priv);
	if (ret)
		return ret;

	FUNC3(pdev, priv);

	return 0;
}