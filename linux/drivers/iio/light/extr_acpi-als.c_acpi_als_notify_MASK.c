#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct iio_dev {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct acpi_als {int /*<<< orphan*/  lock; int /*<<< orphan*/ * evt_buffer; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALS_EVT_BUFFER_SIZE ; 
 int /*<<< orphan*/  ACPI_ALS_ILLUMINANCE ; 
#define  ACPI_ALS_NOTIFY_ILLUMINANCE 128 
 int FUNC0 (struct acpi_als*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct acpi_als* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct acpi_device *device, u32 event)
{
	struct iio_dev *indio_dev = FUNC1(device);
	struct acpi_als *als = FUNC4(indio_dev);
	s32 *buffer = als->evt_buffer;
	s64 time_ns = FUNC3(indio_dev);
	s32 val;
	int ret;

	FUNC7(&als->lock);

	FUNC6(buffer, 0, ACPI_ALS_EVT_BUFFER_SIZE);

	switch (event) {
	case ACPI_ALS_NOTIFY_ILLUMINANCE:
		ret = FUNC0(als, ACPI_ALS_ILLUMINANCE, &val);
		if (ret < 0)
			goto out;
		*buffer++ = val;
		break;
	default:
		/* Unhandled event */
		FUNC2(&device->dev, "Unhandled ACPI ALS event (%08x)!\n",
			event);
		goto out;
	}

	FUNC5(indio_dev, als->evt_buffer, time_ns);

out:
	FUNC8(&als->lock);
}