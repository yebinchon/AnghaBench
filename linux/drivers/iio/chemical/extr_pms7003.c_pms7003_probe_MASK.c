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
struct pms7003_state {int /*<<< orphan*/  frame_ready; int /*<<< orphan*/  lock; struct serdev_device* serdev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_ENTER_PASSIVE_MODE ; 
 int /*<<< orphan*/  CMD_WAKEUP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  PMS7003_DRIVER_NAME ; 
 int /*<<< orphan*/  SERDEV_PARITY_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pms7003_state*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct serdev_device*) ; 
 struct pms7003_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pms7003_channels ; 
 int FUNC10 (struct pms7003_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pms7003_info ; 
 int /*<<< orphan*/  pms7003_scan_masks ; 
 int /*<<< orphan*/  pms7003_serdev_ops ; 
 int /*<<< orphan*/  pms7003_stop ; 
 int /*<<< orphan*/  pms7003_trigger_handler ; 
 int /*<<< orphan*/  FUNC11 (struct serdev_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct serdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct serdev_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct serdev_device*,int) ; 
 int FUNC15 (struct serdev_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct serdev_device *serdev)
{
	struct pms7003_state *state;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&serdev->dev, sizeof(*state));
	if (!indio_dev)
		return -ENOMEM;

	state = FUNC7(indio_dev);
	FUNC13(serdev, indio_dev);
	state->serdev = serdev;
	indio_dev->dev.parent = &serdev->dev;
	indio_dev->info = &pms7003_info;
	indio_dev->name = PMS7003_DRIVER_NAME;
	indio_dev->channels = pms7003_channels,
	indio_dev->num_channels = FUNC0(pms7003_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->available_scan_masks = pms7003_scan_masks;

	FUNC9(&state->lock);
	FUNC8(&state->frame_ready);

	FUNC12(serdev, &pms7003_serdev_ops);
	ret = FUNC6(&serdev->dev, serdev);
	if (ret)
		return ret;

	FUNC11(serdev, 9600);
	FUNC14(serdev, false);

	ret = FUNC15(serdev, SERDEV_PARITY_NONE);
	if (ret)
		return ret;

	ret = FUNC10(state, CMD_WAKEUP);
	if (ret) {
		FUNC1(&serdev->dev, "failed to wakeup sensor\n");
		return ret;
	}

	ret = FUNC10(state, CMD_ENTER_PASSIVE_MODE);
	if (ret) {
		FUNC1(&serdev->dev, "failed to enter passive mode\n");
		return ret;
	}

	ret = FUNC2(&serdev->dev, pms7003_stop, state);
	if (ret)
		return ret;

	ret = FUNC5(&serdev->dev, indio_dev, NULL,
					      pms7003_trigger_handler, NULL);
	if (ret)
		return ret;

	return FUNC4(&serdev->dev, indio_dev);
}