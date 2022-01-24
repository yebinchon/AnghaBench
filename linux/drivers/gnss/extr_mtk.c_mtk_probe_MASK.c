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
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct mtk_data {struct gnss_serial* vbackup; struct gnss_serial* vcc; } ;
struct gnss_serial {TYPE_1__* gdev; int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GNSS_TYPE_MTK ; 
 scalar_t__ FUNC0 (struct gnss_serial*) ; 
 int FUNC1 (struct gnss_serial*) ; 
 struct gnss_serial* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct gnss_serial* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct gnss_serial* FUNC4 (struct serdev_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gnss_serial*) ; 
 struct mtk_data* FUNC6 (struct gnss_serial*) ; 
 int FUNC7 (struct gnss_serial*) ; 
 int /*<<< orphan*/  mtk_gserial_ops ; 
 int /*<<< orphan*/  FUNC8 (struct gnss_serial*) ; 
 int FUNC9 (struct gnss_serial*) ; 

__attribute__((used)) static int FUNC10(struct serdev_device *serdev)
{
	struct gnss_serial *gserial;
	struct mtk_data *data;
	int ret;

	gserial = FUNC4(serdev, sizeof(*data));
	if (FUNC0(gserial)) {
		ret = FUNC1(gserial);
		return ret;
	}

	gserial->ops = &mtk_gserial_ops;

	gserial->gdev->type = GNSS_TYPE_MTK;

	data = FUNC6(gserial);

	data->vcc = FUNC2(&serdev->dev, "vcc");
	if (FUNC0(data->vcc)) {
		ret = FUNC1(data->vcc);
		goto err_free_gserial;
	}

	data->vbackup = FUNC3(&serdev->dev, "vbackup");
	if (FUNC0(data->vbackup)) {
		ret = FUNC1(data->vbackup);
		if (ret == -ENODEV)
			data->vbackup = NULL;
		else
			goto err_free_gserial;
	}

	if (data->vbackup) {
		ret = FUNC9(data->vbackup);
		if (ret)
			goto err_free_gserial;
	}

	ret = FUNC7(gserial);
	if (ret)
		goto err_disable_vbackup;

	return 0;

err_disable_vbackup:
	if (data->vbackup)
		FUNC8(data->vbackup);
err_free_gserial:
	FUNC5(gserial);

	return ret;
}