#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct bmi160_data {TYPE_2__* trig; int /*<<< orphan*/  regmap; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  bmi160_trigger_ops ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 struct bmi160_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct iio_dev *indio_dev, int irq, u32 irq_type)
{
	struct bmi160_data *data = FUNC3(indio_dev);
	int ret;

	data->trig = FUNC0(&indio_dev->dev, "%s-dev%d",
					    indio_dev->name, indio_dev->id);

	if (data->trig == NULL)
		return -ENOMEM;

	ret = FUNC2(&indio_dev->dev, irq,
			       &iio_trigger_generic_data_rdy_poll,
			       irq_type, "bmi160", data->trig);
	if (ret)
		return ret;

	data->trig->dev.parent = FUNC6(data->regmap);
	data->trig->ops = &bmi160_trigger_ops;
	FUNC5(data->trig, indio_dev);

	ret = FUNC1(&indio_dev->dev, data->trig);
	if (ret)
		return ret;

	indio_dev->trig = FUNC4(data->trig);

	return 0;
}