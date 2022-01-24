#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; int /*<<< orphan*/  groups; } ;
struct iio_dev {scalar_t__ id; int /*<<< orphan*/  buffer_list; TYPE_1__ dev; int /*<<< orphan*/  channel_attr_list; int /*<<< orphan*/  info_exist_lock; int /*<<< orphan*/  mlock; int /*<<< orphan*/  groups; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IIO_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_bus_type ; 
 int /*<<< orphan*/  iio_device_type ; 
 int /*<<< orphan*/  iio_ida ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 struct iio_dev* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

struct iio_dev *FUNC10(int sizeof_priv)
{
	struct iio_dev *dev;
	size_t alloc_size;

	alloc_size = sizeof(struct iio_dev);
	if (sizeof_priv) {
		alloc_size = FUNC0(alloc_size, IIO_ALIGN);
		alloc_size += sizeof_priv;
	}
	/* ensure 32-byte alignment of whole construct ? */
	alloc_size += IIO_ALIGN - 1;

	dev = FUNC7(alloc_size, GFP_KERNEL);

	if (dev) {
		dev->dev.groups = dev->groups;
		dev->dev.type = &iio_device_type;
		dev->dev.bus = &iio_bus_type;
		FUNC4(&dev->dev);
		FUNC2(&dev->dev, (void *)dev);
		FUNC8(&dev->mlock);
		FUNC8(&dev->info_exist_lock);
		FUNC1(&dev->channel_attr_list);

		dev->id = FUNC5(&iio_ida, 0, 0, GFP_KERNEL);
		if (dev->id < 0) {
			/* cannot use a dev_err as the name isn't available */
			FUNC9("failed to get device id\n");
			FUNC6(dev);
			return NULL;
		}
		FUNC3(&dev->dev, "iio:device%d", dev->id);
		FUNC1(&dev->buffer_list);
	}

	return dev;
}