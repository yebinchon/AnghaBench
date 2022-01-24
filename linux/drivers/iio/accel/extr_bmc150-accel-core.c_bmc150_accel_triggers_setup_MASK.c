#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct bmc150_accel_trigger {TYPE_2__* indio_trig; int /*<<< orphan*/  setup; struct bmc150_accel_data* data; int /*<<< orphan*/  intr; } ;
struct bmc150_accel_data {struct bmc150_accel_trigger* triggers; int /*<<< orphan*/  regmap; } ;
struct TYPE_8__ {int /*<<< orphan*/  setup; int /*<<< orphan*/  intr; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;

/* Variables and functions */
 int BMC150_ACCEL_TRIGGERS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  bmc150_accel_trigger_ops ; 
 TYPE_5__* bmc150_accel_triggers ; 
 int /*<<< orphan*/  FUNC0 (struct bmc150_accel_data*,int) ; 
 TYPE_2__* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct bmc150_accel_trigger*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				       struct bmc150_accel_data *data)
{
	struct device *dev = FUNC4(data->regmap);
	int i, ret;

	for (i = 0; i < BMC150_ACCEL_TRIGGERS; i++) {
		struct bmc150_accel_trigger *t = &data->triggers[i];

		t->indio_trig = FUNC1(dev,
					bmc150_accel_triggers[i].name,
						       indio_dev->name,
						       indio_dev->id);
		if (!t->indio_trig) {
			ret = -ENOMEM;
			break;
		}

		t->indio_trig->dev.parent = dev;
		t->indio_trig->ops = &bmc150_accel_trigger_ops;
		t->intr = bmc150_accel_triggers[i].intr;
		t->data = data;
		t->setup = bmc150_accel_triggers[i].setup;
		FUNC3(t->indio_trig, t);

		ret = FUNC2(t->indio_trig);
		if (ret)
			break;
	}

	if (ret)
		FUNC0(data, i - 1);

	return ret;
}