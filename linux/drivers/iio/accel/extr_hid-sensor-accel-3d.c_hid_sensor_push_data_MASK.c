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
struct iio_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iio_dev *indio_dev, void *data,
				 int len, int64_t timestamp)
{
	FUNC0(&indio_dev->dev, "hid_sensor_push_data\n");
	FUNC1(indio_dev, data, timestamp);
}