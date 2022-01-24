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
struct talitos_private {void** irq; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct talitos_private* FUNC2 (struct device*) ; 
 int FUNC3 (struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (struct device_node*,int) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  talitos1_interrupt_4ch ; 
 int /*<<< orphan*/  talitos2_interrupt_4ch ; 
 int /*<<< orphan*/  talitos2_interrupt_ch0_2 ; 
 int /*<<< orphan*/  talitos2_interrupt_ch1_3 ; 

__attribute__((used)) static int FUNC7(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct device_node *np = ofdev->dev.of_node;
	struct talitos_private *priv = FUNC2(dev);
	int err;
	bool is_sec1 = FUNC3(priv);

	priv->irq[0] = FUNC5(np, 0);
	if (!priv->irq[0]) {
		FUNC1(dev, "failed to map irq\n");
		return -EINVAL;
	}
	if (is_sec1) {
		err = FUNC6(priv->irq[0], talitos1_interrupt_4ch, 0,
				  FUNC0(dev), dev);
		goto primary_out;
	}

	priv->irq[1] = FUNC5(np, 1);

	/* get the primary irq line */
	if (!priv->irq[1]) {
		err = FUNC6(priv->irq[0], talitos2_interrupt_4ch, 0,
				  FUNC0(dev), dev);
		goto primary_out;
	}

	err = FUNC6(priv->irq[0], talitos2_interrupt_ch0_2, 0,
			  FUNC0(dev), dev);
	if (err)
		goto primary_out;

	/* get the secondary irq line */
	err = FUNC6(priv->irq[1], talitos2_interrupt_ch1_3, 0,
			  FUNC0(dev), dev);
	if (err) {
		FUNC1(dev, "failed to request secondary irq\n");
		FUNC4(priv->irq[1]);
		priv->irq[1] = 0;
	}

	return err;

primary_out:
	if (err) {
		FUNC1(dev, "failed to request primary irq\n");
		FUNC4(priv->irq[0]);
		priv->irq[0] = 0;
	}

	return err;
}