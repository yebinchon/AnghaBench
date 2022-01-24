#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  data_ready; struct platform_device* pdev; struct hid_sensor_hub_device* hsdev; } ;
struct TYPE_9__ {struct platform_device* pdev; int /*<<< orphan*/  capture_sample; int /*<<< orphan*/  send_event; } ;
struct magn_3d_state {TYPE_3__ magn_flux_attributes; TYPE_2__ callbacks; TYPE_3__ rot_attributes; } ;
struct TYPE_8__ {TYPE_6__* parent; } ;
struct iio_dev {int num_channels; char* name; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; struct iio_chan_spec* channels; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_COMPASS_3D ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 struct iio_dev* FUNC2 (TYPE_6__*,int) ; 
 int FUNC3 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct iio_dev*,char*,TYPE_3__*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct magn_3d_state* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  magn_3d_capture_sample ; 
 int /*<<< orphan*/  magn_3d_info ; 
 int FUNC11 (struct platform_device*,struct hid_sensor_hub_device*,struct iio_chan_spec**,int*,int /*<<< orphan*/ ,struct magn_3d_state*) ; 
 int /*<<< orphan*/  magn_3d_proc_event ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct iio_dev*) ; 
 int FUNC13 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	int ret = 0;
	static char *name = "magn_3d";
	struct iio_dev *indio_dev;
	struct magn_3d_state *magn_state;
	struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
	struct iio_chan_spec *channels;
	int chan_count = 0;

	indio_dev = FUNC2(&pdev->dev,
					  sizeof(struct magn_3d_state));
	if (indio_dev == NULL)
		return -ENOMEM;

	FUNC12(pdev, indio_dev);

	magn_state = FUNC8(indio_dev);
	magn_state->magn_flux_attributes.hsdev = hsdev;
	magn_state->magn_flux_attributes.pdev = pdev;

	ret = FUNC3(hsdev,
				HID_USAGE_SENSOR_COMPASS_3D,
				&magn_state->magn_flux_attributes);
	if (ret) {
		FUNC1(&pdev->dev, "failed to setup common attributes\n");
		return ret;
	}
	magn_state->rot_attributes = magn_state->magn_flux_attributes;

	ret = FUNC11(pdev, hsdev,
				&channels, &chan_count,
				HID_USAGE_SENSOR_COMPASS_3D, magn_state);
	if (ret) {
		FUNC1(&pdev->dev, "failed to parse report\n");
		return ret;
	}

	indio_dev->channels = channels;
	indio_dev->num_channels = chan_count;
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->info = &magn_3d_info;
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC10(indio_dev, &iio_pollfunc_store_time,
		NULL, NULL);
	if (ret) {
		FUNC1(&pdev->dev, "failed to initialize trigger buffer\n");
		return ret;
	}
	FUNC0(&magn_state->magn_flux_attributes.data_ready, 0);
	ret = FUNC5(indio_dev, name,
					&magn_state->magn_flux_attributes);
	if (ret < 0) {
		FUNC1(&pdev->dev, "trigger setup failed\n");
		goto error_unreg_buffer_funcs;
	}

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC1(&pdev->dev, "device register failed\n");
		goto error_remove_trigger;
	}

	magn_state->callbacks.send_event = magn_3d_proc_event;
	magn_state->callbacks.capture_sample = magn_3d_capture_sample;
	magn_state->callbacks.pdev = pdev;
	ret = FUNC13(hsdev, HID_USAGE_SENSOR_COMPASS_3D,
					&magn_state->callbacks);
	if (ret < 0) {
		FUNC1(&pdev->dev, "callback reg failed\n");
		goto error_iio_unreg;
	}

	return ret;

error_iio_unreg:
	FUNC7(indio_dev);
error_remove_trigger:
	FUNC4(&magn_state->magn_flux_attributes);
error_unreg_buffer_funcs:
	FUNC9(indio_dev);
	return ret;
}