#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_7__ {TYPE_1__* parent; int /*<<< orphan*/  devt; scalar_t__ of_node; } ;
struct TYPE_6__ {struct module* owner; } ;
struct iio_dev {int modes; TYPE_4__ dev; TYPE_2__ chrdev; int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/  id; int /*<<< orphan*/  info; struct module* driver_module; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int INDIO_ALL_BUFFER_MODES ; 
 int INDIO_ALL_TRIGGERED_MODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_buffer_fileops ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_devt ; 
 int /*<<< orphan*/  noop_ring_setup_ops ; 

int FUNC15(struct iio_dev *indio_dev, struct module *this_mod)
{
	int ret;

	indio_dev->driver_module = this_mod;
	/* If the calling driver did not initialize of_node, do it here */
	if (!indio_dev->dev.of_node && indio_dev->dev.parent)
		indio_dev->dev.of_node = indio_dev->dev.parent->of_node;

	ret = FUNC7(indio_dev);
	if (ret < 0)
		return ret;

	if (!indio_dev->info)
		return -EINVAL;

	/* configure elements for the chrdev */
	indio_dev->dev.devt = FUNC1(FUNC0(iio_devt), indio_dev->id);

	FUNC8(indio_dev);

	ret = FUNC5(indio_dev);
	if (ret) {
		FUNC4(indio_dev->dev.parent,
			"Failed to create buffer sysfs interfaces\n");
		goto error_unreg_debugfs;
	}

	ret = FUNC10(indio_dev);
	if (ret) {
		FUNC4(indio_dev->dev.parent,
			"Failed to register sysfs interfaces\n");
		goto error_buffer_free_sysfs;
	}
	ret = FUNC9(indio_dev);
	if (ret) {
		FUNC4(indio_dev->dev.parent,
			"Failed to register event set\n");
		goto error_free_sysfs;
	}
	if (indio_dev->modes & INDIO_ALL_TRIGGERED_MODES)
		FUNC11(indio_dev);

	if ((indio_dev->modes & INDIO_ALL_BUFFER_MODES) &&
		indio_dev->setup_ops == NULL)
		indio_dev->setup_ops = &noop_ring_setup_ops;

	FUNC3(&indio_dev->chrdev, &iio_buffer_fileops);

	indio_dev->chrdev.owner = this_mod;

	ret = FUNC2(&indio_dev->chrdev, &indio_dev->dev);
	if (ret < 0)
		goto error_unreg_eventset;

	return 0;

error_unreg_eventset:
	FUNC13(indio_dev);
error_free_sysfs:
	FUNC14(indio_dev);
error_buffer_free_sysfs:
	FUNC6(indio_dev);
error_unreg_debugfs:
	FUNC12(indio_dev);
	return ret;
}