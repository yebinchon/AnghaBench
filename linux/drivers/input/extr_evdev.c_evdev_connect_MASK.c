#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct input_handler {int dummy; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * class; int /*<<< orphan*/  devt; } ;
struct TYPE_9__ {struct evdev* private; struct input_handler* handler; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct evdev {int exist; TYPE_1__ dev; TYPE_2__ handle; int /*<<< orphan*/  cdev; int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  client_lock; int /*<<< orphan*/  client_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EVDEV_MINORS ; 
 int EVDEV_MINOR_BASE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INPUT_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdev*) ; 
 int /*<<< orphan*/  evdev_fops ; 
 int /*<<< orphan*/  evdev_free ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_class ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (int,int,int) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 struct evdev* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct input_handler *handler, struct input_dev *dev,
			 const struct input_device_id *id)
{
	struct evdev *evdev;
	int minor;
	int dev_no;
	int error;

	minor = FUNC11(EVDEV_MINOR_BASE, EVDEV_MINORS, true);
	if (minor < 0) {
		error = minor;
		FUNC16("failed to reserve new minor: %d\n", error);
		return error;
	}

	evdev = FUNC14(sizeof(struct evdev), GFP_KERNEL);
	if (!evdev) {
		error = -ENOMEM;
		goto err_free_minor;
	}

	FUNC0(&evdev->client_list);
	FUNC18(&evdev->client_lock);
	FUNC15(&evdev->mutex);
	FUNC8(&evdev->wait);
	evdev->exist = true;

	dev_no = minor;
	/* Normalize device number if it falls into legacy range */
	if (dev_no < EVDEV_MINOR_BASE + EVDEV_MINORS)
		dev_no -= EVDEV_MINOR_BASE;
	FUNC5(&evdev->dev, "event%d", dev_no);

	evdev->handle.dev = FUNC10(dev);
	evdev->handle.name = FUNC4(&evdev->dev);
	evdev->handle.handler = handler;
	evdev->handle.private = evdev;

	evdev->dev.devt = FUNC1(INPUT_MAJOR, minor);
	evdev->dev.class = &input_class;
	evdev->dev.parent = &dev->dev;
	evdev->dev.release = evdev_free;
	FUNC6(&evdev->dev);

	error = FUNC12(&evdev->handle);
	if (error)
		goto err_free_evdev;

	FUNC3(&evdev->cdev, &evdev_fops);

	error = FUNC2(&evdev->cdev, &evdev->dev);
	if (error)
		goto err_cleanup_evdev;

	return 0;

 err_cleanup_evdev:
	FUNC7(evdev);
	FUNC13(&evdev->handle);
 err_free_evdev:
	FUNC17(&evdev->dev);
 err_free_minor:
	FUNC9(minor);
	return error;
}