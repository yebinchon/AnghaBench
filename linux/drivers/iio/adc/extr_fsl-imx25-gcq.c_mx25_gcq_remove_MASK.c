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
struct platform_device {int dummy; } ;
struct mx25_gcq_priv {scalar_t__* vref; int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mx25_gcq_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct mx25_gcq_priv* FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct mx25_gcq_priv *priv = FUNC3(indio_dev);
	int i;

	FUNC2(indio_dev);
	FUNC1(priv->irq, priv);
	FUNC0(priv->clk);
	for (i = 4; i-- > 0;) {
		if (priv->vref[i])
			FUNC5(priv->vref[i]);
	}

	return 0;
}