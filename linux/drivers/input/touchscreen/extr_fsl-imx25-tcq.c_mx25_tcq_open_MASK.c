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
struct mx25_tcq_priv {int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;
struct input_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct mx25_tcq_priv* FUNC3 (struct device*) ; 
 int FUNC4 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mx25_tcq_priv*) ; 

__attribute__((used)) static int FUNC6(struct input_dev *idev)
{
	struct device *dev = &idev->dev;
	struct mx25_tcq_priv *priv = FUNC3(dev);
	int error;

	error = FUNC1(priv->clk);
	if (error) {
		FUNC2(dev, "Failed to enable ipg clock\n");
		return error;
	}

	error = FUNC4(priv);
	if (error) {
		FUNC2(dev, "Failed to init tcq\n");
		FUNC0(priv->clk);
		return error;
	}

	FUNC5(priv);

	return 0;
}