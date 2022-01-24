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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct iio_buffer {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct iio_dev* driver_data; } ;
struct acpi_als {int /*<<< orphan*/  lock; struct acpi_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALS_DEVICE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_BUFFER_SOFTWARE ; 
 int /*<<< orphan*/  acpi_als_channels ; 
 int /*<<< orphan*/  acpi_als_info ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct iio_buffer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,struct iio_buffer*) ; 
 struct acpi_als* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct acpi_als *als;
	struct iio_dev *indio_dev;
	struct iio_buffer *buffer;

	indio_dev = FUNC1(&device->dev, sizeof(*als));
	if (!indio_dev)
		return -ENOMEM;

	als = FUNC5(indio_dev);

	device->driver_data = indio_dev;
	als->device = device;
	FUNC6(&als->lock);

	indio_dev->name = ACPI_ALS_DEVICE_NAME;
	indio_dev->dev.parent = &device->dev;
	indio_dev->info = &acpi_als_info;
	indio_dev->modes = INDIO_BUFFER_SOFTWARE;
	indio_dev->channels = acpi_als_channels;
	indio_dev->num_channels = FUNC0(acpi_als_channels);

	buffer = FUNC3(&device->dev);
	if (!buffer)
		return -ENOMEM;

	FUNC4(indio_dev, buffer);

	return FUNC2(&device->dev, indio_dev);
}