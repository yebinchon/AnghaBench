#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; struct lm3533_als_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct lm3533_als_platform_data {int dummy; } ;
struct lm3533_als {scalar_t__ irq; int /*<<< orphan*/  thresh_mutex; int /*<<< orphan*/  zone; struct platform_device* pdev; struct lm3533* lm3533; } ;
struct lm3533 {scalar_t__ irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct lm3533* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct iio_dev* FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct lm3533_als* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  lm3533_als_channels ; 
 int /*<<< orphan*/  FUNC9 (struct lm3533_als*) ; 
 int FUNC10 (struct lm3533_als*) ; 
 int /*<<< orphan*/  lm3533_als_info ; 
 int FUNC11 (struct lm3533_als*,struct lm3533_als_platform_data*) ; 
 int FUNC12 (struct lm3533_als*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct lm3533 *lm3533;
	struct lm3533_als_platform_data *pdata;
	struct lm3533_als *als;
	struct iio_dev *indio_dev;
	int ret;

	lm3533 = FUNC3(pdev->dev.parent);
	if (!lm3533)
		return -EINVAL;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		FUNC2(&pdev->dev, "no platform data\n");
		return -EINVAL;
	}

	indio_dev = FUNC5(&pdev->dev, sizeof(*als));
	if (!indio_dev)
		return -ENOMEM;

	indio_dev->info = &lm3533_als_info;
	indio_dev->channels = lm3533_als_channels;
	indio_dev->num_channels = FUNC0(lm3533_als_channels);
	indio_dev->name = FUNC4(&pdev->dev);
	indio_dev->dev.parent = pdev->dev.parent;
	indio_dev->modes = INDIO_DIRECT_MODE;

	als = FUNC8(indio_dev);
	als->lm3533 = lm3533;
	als->pdev = pdev;
	als->irq = lm3533->irq;
	FUNC1(&als->zone, 0);
	FUNC13(&als->thresh_mutex);

	FUNC14(pdev, indio_dev);

	if (als->irq) {
		ret = FUNC12(als, indio_dev);
		if (ret)
			return ret;
	}

	ret = FUNC11(als, pdata);
	if (ret)
		goto err_free_irq;

	ret = FUNC10(als);
	if (ret)
		goto err_free_irq;

	ret = FUNC7(indio_dev);
	if (ret) {
		FUNC2(&pdev->dev, "failed to register ALS\n");
		goto err_disable;
	}

	return 0;

err_disable:
	FUNC9(als);
err_free_irq:
	if (als->irq)
		FUNC6(als->irq, indio_dev);

	return ret;
}