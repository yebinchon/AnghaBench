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
struct ubx_data {struct gnss_serial* v_bckp; struct gnss_serial* vcc; } ;
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct gnss_serial {TYPE_1__* gdev; int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GNSS_TYPE_UBX ; 
 scalar_t__ FUNC0 (struct gnss_serial*) ; 
 int FUNC1 (struct gnss_serial*) ; 
 struct gnss_serial* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct gnss_serial* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct gnss_serial* FUNC4 (struct serdev_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gnss_serial*) ; 
 struct ubx_data* FUNC6 (struct gnss_serial*) ; 
 int FUNC7 (struct gnss_serial*) ; 
 int /*<<< orphan*/  FUNC8 (struct gnss_serial*) ; 
 int FUNC9 (struct gnss_serial*) ; 
 int /*<<< orphan*/  ubx_gserial_ops ; 

__attribute__((used)) static int FUNC10(struct serdev_device *serdev)
{
	struct gnss_serial *gserial;
	struct ubx_data *data;
	int ret;

	gserial = FUNC4(serdev, sizeof(*data));
	if (FUNC0(gserial)) {
		ret = FUNC1(gserial);
		return ret;
	}

	gserial->ops = &ubx_gserial_ops;

	gserial->gdev->type = GNSS_TYPE_UBX;

	data = FUNC6(gserial);

	data->vcc = FUNC2(&serdev->dev, "vcc");
	if (FUNC0(data->vcc)) {
		ret = FUNC1(data->vcc);
		goto err_free_gserial;
	}

	data->v_bckp = FUNC3(&serdev->dev, "v-bckp");
	if (FUNC0(data->v_bckp)) {
		ret = FUNC1(data->v_bckp);
		if (ret == -ENODEV)
			data->v_bckp = NULL;
		else
			goto err_free_gserial;
	}

	if (data->v_bckp) {
		ret = FUNC9(data->v_bckp);
		if (ret)
			goto err_free_gserial;
	}

	ret = FUNC7(gserial);
	if (ret)
		goto err_disable_v_bckp;

	return 0;

err_disable_v_bckp:
	if (data->v_bckp)
		FUNC8(data->v_bckp);
err_free_gserial:
	FUNC5(gserial);

	return ret;
}