#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sch5636_data {int* temp_ctrl; int* fan_ctrl; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  addr; int /*<<< orphan*/  watchdog; int /*<<< orphan*/ * hwmon_dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  start; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DEVNAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int SCH5636_FAN_DEACTIVATED ; 
 int SCH5636_NO_FANS ; 
 int SCH5636_NO_TEMPS ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ SCH5636_REG_FUJITSU_ID ; 
 scalar_t__ SCH5636_REG_FUJITSU_REV ; 
 scalar_t__ FUNC4 (int) ; 
 int SCH5636_TEMP_DEACTIVATED ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sch5636_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct sch5636_data*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* sch5636_attr ; 
 TYPE_2__* sch5636_fan_attr ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 TYPE_1__* sch5636_temp_attr ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct sch5636_data *data;
	int i, err, val, revision[2];
	char id[4];

	data = FUNC6(&pdev->dev, sizeof(struct sch5636_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->addr = FUNC9(pdev, IORESOURCE_IO, 0)->start;
	FUNC8(&data->update_lock);
	FUNC10(pdev, data);

	for (i = 0; i < 3; i++) {
		val = FUNC14(data->addr,
					       SCH5636_REG_FUJITSU_ID + i);
		if (val < 0) {
			FUNC11("Could not read Fujitsu id byte at %#x\n",
				SCH5636_REG_FUJITSU_ID + i);
			err = val;
			goto error;
		}
		id[i] = val;
	}
	id[i] = '\0';

	if (FUNC16(id, "THS")) {
		FUNC11("Unknown Fujitsu id: %02x%02x%02x\n",
		       id[0], id[1], id[2]);
		err = -ENODEV;
		goto error;
	}

	for (i = 0; i < 2; i++) {
		val = FUNC14(data->addr,
					       SCH5636_REG_FUJITSU_REV + i);
		if (val < 0) {
			err = val;
			goto error;
		}
		revision[i] = val;
	}
	FUNC12("Found %s chip at %#hx, revision: %d.%02d\n", DEVNAME,
		data->addr, revision[0], revision[1]);

	/* Read all temp + fan ctrl registers to determine which are active */
	for (i = 0; i < SCH5636_NO_TEMPS; i++) {
		val = FUNC14(data->addr,
					       FUNC4(i));
		if (FUNC17(val < 0)) {
			err = val;
			goto error;
		}
		data->temp_ctrl[i] = val;
	}

	for (i = 0; i < SCH5636_NO_FANS; i++) {
		val = FUNC14(data->addr,
					       FUNC3(i));
		if (FUNC17(val < 0)) {
			err = val;
			goto error;
		}
		data->fan_ctrl[i] = val;
	}

	for (i = 0; i < FUNC0(sch5636_attr); i++) {
		err = FUNC5(&pdev->dev,
					 &sch5636_attr[i].dev_attr);
		if (err)
			goto error;
	}

	for (i = 0; i < (SCH5636_NO_TEMPS * 3); i++) {
		if (data->temp_ctrl[i/3] & SCH5636_TEMP_DEACTIVATED)
			continue;

		err = FUNC5(&pdev->dev,
					&sch5636_temp_attr[i].dev_attr);
		if (err)
			goto error;
	}

	for (i = 0; i < (SCH5636_NO_FANS * 3); i++) {
		if (data->fan_ctrl[i/3] & SCH5636_FAN_DEACTIVATED)
			continue;

		err = FUNC5(&pdev->dev,
					&sch5636_fan_attr[i].dev_attr);
		if (err)
			goto error;
	}

	data->hwmon_dev = FUNC7(&pdev->dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		data->hwmon_dev = NULL;
		goto error;
	}

	/* Note failing to register the watchdog is not a fatal error */
	data->watchdog = FUNC15(&pdev->dev, data->addr,
					(revision[0] << 8) | revision[1],
					&data->update_lock, 0);

	return 0;

error:
	FUNC13(pdev);
	return err;
}