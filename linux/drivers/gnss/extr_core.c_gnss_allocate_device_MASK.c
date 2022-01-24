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
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;
struct device {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/  class; scalar_t__ devt; } ;
struct gnss_device {int id; TYPE_1__ cdev; void* write_buf; int /*<<< orphan*/  read_fifo; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  write_mutex; int /*<<< orphan*/  read_mutex; int /*<<< orphan*/  rwsem; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GNSS_MINORS ; 
 int /*<<< orphan*/  GNSS_READ_FIFO_SIZE ; 
 int GNSS_WRITE_BUF_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  gnss_class ; 
 int /*<<< orphan*/  gnss_device_release ; 
 scalar_t__ gnss_first ; 
 int /*<<< orphan*/  gnss_fops ; 
 int /*<<< orphan*/  gnss_minors ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gnss_device*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 

struct gnss_device *FUNC12(struct device *parent)
{
	struct gnss_device *gdev;
	struct device *dev;
	int id;
	int ret;

	gdev = FUNC9(sizeof(*gdev), GFP_KERNEL);
	if (!gdev)
		return NULL;

	id = FUNC4(&gnss_minors, 0, GNSS_MINORS, GFP_KERNEL);
	if (id < 0) {
		FUNC8(gdev);
		return NULL;
	}

	gdev->id = id;

	dev = &gdev->dev;
	FUNC3(dev);
	dev->devt = gnss_first + id;
	dev->class = gnss_class;
	dev->parent = parent;
	dev->release = gnss_device_release;
	FUNC1(dev, gdev);
	FUNC2(dev, "gnss%d", id);

	FUNC5(&gdev->rwsem);
	FUNC10(&gdev->read_mutex);
	FUNC10(&gdev->write_mutex);
	FUNC6(&gdev->read_queue);

	ret = FUNC7(&gdev->read_fifo, GNSS_READ_FIFO_SIZE, GFP_KERNEL);
	if (ret)
		goto err_put_device;

	gdev->write_buf = FUNC9(GNSS_WRITE_BUF_SIZE, GFP_KERNEL);
	if (!gdev->write_buf)
		goto err_put_device;

	FUNC0(&gdev->cdev, &gnss_fops);
	gdev->cdev.owner = THIS_MODULE;

	return gdev;

err_put_device:
	FUNC11(dev);

	return NULL;
}