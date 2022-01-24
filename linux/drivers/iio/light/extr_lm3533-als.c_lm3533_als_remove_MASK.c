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
struct lm3533_als {scalar_t__ irq; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct lm3533_als* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct lm3533_als*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int) ; 
 struct iio_dev* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_dev *indio_dev = FUNC5(pdev);
	struct lm3533_als *als = FUNC2(indio_dev);

	FUNC4(indio_dev, false);
	FUNC1(indio_dev);
	FUNC3(als);
	if (als->irq)
		FUNC0(als->irq, indio_dev);

	return 0;
}