#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_2__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct iio_trigger* FUNC0 (int) ; 
 int /*<<< orphan*/  at91_adc_trigger_ops ; 
 struct iio_trigger* FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger*,struct iio_dev*) ; 

__attribute__((used)) static struct iio_trigger *FUNC4(struct iio_dev *indio,
						     char *trigger_name)
{
	struct iio_trigger *trig;
	int ret;

	trig = FUNC1(&indio->dev, "%s-dev%d-%s", indio->name,
				      indio->id, trigger_name);
	if (!trig)
		return NULL;

	trig->dev.parent = indio->dev.parent;
	FUNC3(trig, indio);
	trig->ops = &at91_adc_trigger_ops;

	ret = FUNC2(&indio->dev, trig);
	if (ret)
		return FUNC0(ret);

	return trig;
}