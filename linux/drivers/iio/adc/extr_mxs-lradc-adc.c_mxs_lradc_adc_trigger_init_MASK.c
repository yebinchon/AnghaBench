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
struct mxs_lradc_adc {struct iio_trigger* trig; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iio_trigger* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mxs_lradc_adc* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger*,struct iio_dev*) ; 
 int /*<<< orphan*/  mxs_lradc_adc_trigger_ops ; 

__attribute__((used)) static int FUNC4(struct iio_dev *iio)
{
	int ret;
	struct iio_trigger *trig;
	struct mxs_lradc_adc *adc = FUNC1(iio);

	trig = FUNC0(&iio->dev, "%s-dev%i", iio->name,
				      iio->id);
	if (!trig)
		return -ENOMEM;

	trig->dev.parent = adc->dev;
	FUNC3(trig, iio);
	trig->ops = &mxs_lradc_adc_trigger_ops;

	ret = FUNC2(trig);
	if (ret)
		return ret;

	adc->trig = trig;

	return 0;
}