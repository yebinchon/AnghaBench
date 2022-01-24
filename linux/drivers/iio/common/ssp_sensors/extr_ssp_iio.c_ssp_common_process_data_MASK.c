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
struct ssp_sensor_data {int /*<<< orphan*/  buffer; } ;
struct iio_dev {scalar_t__ scan_bytes; scalar_t__ scan_timestamp; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  SSP_TIME_SIZE ; 
 struct ssp_sensor_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 

int FUNC4(struct iio_dev *indio_dev, void *buf,
			    unsigned int len, int64_t timestamp)
{
	__le32 time;
	int64_t calculated_time = 0;
	struct ssp_sensor_data *spd = FUNC0(indio_dev);

	if (indio_dev->scan_bytes == 0)
		return 0;

	/*
	 * it always sends full set of samples, remember about available masks
	 */
	FUNC3(&spd->buffer, buf, len);

	if (indio_dev->scan_timestamp) {
		FUNC3(&time, &((char *)buf)[len], SSP_TIME_SIZE);
		calculated_time =
			timestamp + (int64_t)FUNC2(time) * 1000000;
	}

	return FUNC1(indio_dev, spd->buffer,
						  calculated_time);
}