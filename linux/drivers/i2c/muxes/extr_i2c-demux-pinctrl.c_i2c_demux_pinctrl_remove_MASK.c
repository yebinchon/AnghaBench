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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct i2c_demux_pinctrl_priv {int num_chan; TYPE_1__* chan; } ;
struct TYPE_2__ {int /*<<< orphan*/  chgset; int /*<<< orphan*/  parent_np; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_available_masters ; 
 int /*<<< orphan*/  dev_attr_current_master ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_demux_pinctrl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct i2c_demux_pinctrl_priv* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct i2c_demux_pinctrl_priv *priv = FUNC4(pdev);
	int i;

	FUNC0(&pdev->dev, &dev_attr_current_master);
	FUNC0(&pdev->dev, &dev_attr_available_masters);

	FUNC1(priv);

	for (i = 0; i < priv->num_chan; i++) {
		FUNC3(priv->chan[i].parent_np);
		FUNC2(&priv->chan[i].chgset);
	}

	return 0;
}