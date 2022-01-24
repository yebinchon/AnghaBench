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
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  devt; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * class; } ;
struct TYPE_9__ {struct mousedev* private; struct input_handler* handler; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct mousedev {int exist; TYPE_1__ dev; TYPE_2__ handle; int /*<<< orphan*/  cdev; int /*<<< orphan*/  close_device; int /*<<< orphan*/  open_device; int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  client_lock; int /*<<< orphan*/  mixdev_node; int /*<<< orphan*/  client_list; } ;
struct input_handler {int dummy; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mousedev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INPUT_MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int MOUSEDEV_MINORS ; 
 int MOUSEDEV_MINOR_BASE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_class ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 struct mousedev* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mixdev_close_devices ; 
 int /*<<< orphan*/  mixdev_open_devices ; 
 int /*<<< orphan*/  FUNC15 (struct mousedev*) ; 
 int /*<<< orphan*/  mousedev_close_device ; 
 int /*<<< orphan*/  mousedev_fops ; 
 int /*<<< orphan*/  mousedev_free ; 
 int /*<<< orphan*/  mousedev_open_device ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mousedev *FUNC20(struct input_dev *dev,
					struct input_handler *handler,
					bool mixdev)
{
	struct mousedev *mousedev;
	int minor;
	int error;

	minor = FUNC16(mixdev);
	if (minor < 0) {
		error = minor;
		goto err_out;
	}

	mousedev = FUNC13(sizeof(struct mousedev), GFP_KERNEL);
	if (!mousedev) {
		error = -ENOMEM;
		goto err_free_minor;
	}

	FUNC1(&mousedev->client_list);
	FUNC1(&mousedev->mixdev_node);
	FUNC19(&mousedev->client_lock);
	FUNC17(&mousedev->mutex);
	FUNC14(&mousedev->mutex,
			     mixdev ? SINGLE_DEPTH_NESTING : 0);
	FUNC8(&mousedev->wait);

	if (mixdev) {
		FUNC6(&mousedev->dev, "mice");

		mousedev->open_device = mixdev_open_devices;
		mousedev->close_device = mixdev_close_devices;
	} else {
		int dev_no = minor;
		/* Normalize device number if it falls into legacy range */
		if (dev_no < MOUSEDEV_MINOR_BASE + MOUSEDEV_MINORS)
			dev_no -= MOUSEDEV_MINOR_BASE;
		FUNC6(&mousedev->dev, "mouse%d", dev_no);

		mousedev->open_device = mousedev_open_device;
		mousedev->close_device = mousedev_close_device;
	}

	mousedev->exist = true;
	mousedev->handle.dev = FUNC10(dev);
	mousedev->handle.name = FUNC5(&mousedev->dev);
	mousedev->handle.handler = handler;
	mousedev->handle.private = mousedev;

	mousedev->dev.class = &input_class;
	if (dev)
		mousedev->dev.parent = &dev->dev;
	mousedev->dev.devt = FUNC2(INPUT_MAJOR, minor);
	mousedev->dev.release = mousedev_free;
	FUNC7(&mousedev->dev);

	if (!mixdev) {
		error = FUNC11(&mousedev->handle);
		if (error)
			goto err_free_mousedev;
	}

	FUNC4(&mousedev->cdev, &mousedev_fops);

	error = FUNC3(&mousedev->cdev, &mousedev->dev);
	if (error)
		goto err_cleanup_mousedev;

	return mousedev;

 err_cleanup_mousedev:
	FUNC15(mousedev);
	if (!mixdev)
		FUNC12(&mousedev->handle);
 err_free_mousedev:
	FUNC18(&mousedev->dev);
 err_free_minor:
	FUNC9(minor);
 err_out:
	return FUNC0(error);
}