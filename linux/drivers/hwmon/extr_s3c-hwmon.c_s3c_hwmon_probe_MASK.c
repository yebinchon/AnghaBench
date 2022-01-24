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
struct s3c_hwmon_pdata {struct s3c_hwmon_chcfg** in; } ;
struct s3c_hwmon_chcfg {int mult; scalar_t__ div; } ;
struct s3c_hwmon {int /*<<< orphan*/  client; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/ * attrs; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct s3c_hwmon_chcfg**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct s3c_hwmon_pdata* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct s3c_hwmon* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct s3c_hwmon*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct s3c_hwmon_chcfg*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *dev)
{
	struct s3c_hwmon_pdata *pdata = FUNC4(&dev->dev);
	struct s3c_hwmon *hwmon;
	int ret = 0;
	int i;

	if (!pdata) {
		FUNC3(&dev->dev, "no platform data supplied\n");
		return -EINVAL;
	}

	hwmon = FUNC6(&dev->dev, sizeof(struct s3c_hwmon), GFP_KERNEL);
	if (hwmon == NULL)
		return -ENOMEM;

	FUNC10(dev, hwmon);

	FUNC9(&hwmon->lock);

	/* Register with the core ADC driver. */

	hwmon->client = FUNC11(dev, NULL, NULL, 0);
	if (FUNC1(hwmon->client)) {
		FUNC3(&dev->dev, "cannot register adc\n");
		return FUNC2(hwmon->client);
	}

	/* add attributes for our adc devices. */

	ret = FUNC13(&dev->dev);
	if (ret)
		goto err_registered;

	/* register with the hwmon core */

	hwmon->hwmon_dev = FUNC7(&dev->dev);
	if (FUNC1(hwmon->hwmon_dev)) {
		FUNC3(&dev->dev, "error registering with hwmon\n");
		ret = FUNC2(hwmon->hwmon_dev);
		goto err_raw_attribute;
	}

	for (i = 0; i < FUNC0(pdata->in); i++) {
		struct s3c_hwmon_chcfg *cfg = pdata->in[i];

		if (!cfg)
			continue;

		if (cfg->mult >= 0x10000)
			FUNC5(&dev->dev,
				 "channel %d multiplier too large\n",
				 i);

		if (cfg->div == 0) {
			FUNC3(&dev->dev, "channel %d divider zero\n", i);
			continue;
		}

		ret = FUNC14(&dev->dev, pdata->in[i],
					    &hwmon->attrs[i], i);
		if (ret) {
			FUNC3(&dev->dev,
					"error creating channel %d\n", i);

			for (i--; i >= 0; i--)
				FUNC15(&dev->dev,
							      &hwmon->attrs[i]);

			goto err_hwmon_register;
		}
	}

	return 0;

 err_hwmon_register:
	FUNC8(hwmon->hwmon_dev);

 err_raw_attribute:
	FUNC16(&dev->dev);

 err_registered:
	FUNC12(hwmon->client);

	return ret;
}