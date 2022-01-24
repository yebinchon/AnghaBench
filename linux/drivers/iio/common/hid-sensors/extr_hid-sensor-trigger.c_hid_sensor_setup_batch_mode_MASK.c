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
struct iio_dev {int /*<<< orphan*/  buffer; } ;
struct hid_sensor_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_sensor_common*) ; 
 int /*<<< orphan*/  hid_sensor_fifo_attributes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iio_dev *indio_dev,
					struct hid_sensor_common *st)
{
	if (!FUNC0(st))
		return;

	FUNC1(indio_dev->buffer, hid_sensor_fifo_attributes);
}