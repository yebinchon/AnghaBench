#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_3__ dev; int /*<<< orphan*/  trig; int /*<<< orphan*/  id; } ;
struct hid_sensor_common {TYPE_2__* pdev; int /*<<< orphan*/  work; struct iio_trigger* trigger; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  hid_sensor_set_power_work ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,struct hid_sensor_common*) ; 
 int /*<<< orphan*/  hid_sensor_trigger_ops ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,struct hid_sensor_common*) ; 
 struct iio_trigger* FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_trigger*) ; 
 int FUNC7 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_trigger*,struct hid_sensor_common*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_trigger*) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

int FUNC13(struct iio_dev *indio_dev, const char *name,
				struct hid_sensor_common *attrb)
{
	int ret;
	struct iio_trigger *trig;

	trig = FUNC4("%s-dev%d", name, indio_dev->id);
	if (trig == NULL) {
		FUNC1(&indio_dev->dev, "Trigger Allocate Failed\n");
		ret = -ENOMEM;
		goto error_ret;
	}

	trig->dev.parent = indio_dev->dev.parent;
	FUNC8(trig, attrb);
	trig->ops = &hid_sensor_trigger_ops;
	ret = FUNC7(trig);

	if (ret) {
		FUNC1(&indio_dev->dev, "Trigger Register Failed\n");
		goto error_free_trig;
	}
	attrb->trigger = trig;
	indio_dev->trig = FUNC6(trig);

	FUNC2(indio_dev, attrb);

	ret = FUNC10(&indio_dev->dev);
	if (ret)
		goto error_unreg_trigger;

	FUNC3(indio_dev, attrb);

	FUNC0(&attrb->work, hid_sensor_set_power_work);

	FUNC12(&attrb->pdev->dev, true);
	/* Default to 3 seconds, but can be changed from sysfs */
	FUNC11(&attrb->pdev->dev,
					 3000);
	return ret;
error_unreg_trigger:
	FUNC9(trig);
error_free_trig:
	FUNC5(trig);
error_ret:
	return ret;
}