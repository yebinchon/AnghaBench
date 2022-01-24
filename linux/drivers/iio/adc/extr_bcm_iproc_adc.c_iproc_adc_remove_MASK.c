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
struct iproc_adc_priv {int /*<<< orphan*/  adc_clk; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct iproc_adc_priv* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct iproc_adc_priv *adc_priv = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC3(indio_dev);
	FUNC0(adc_priv->adc_clk);

	return 0;
}