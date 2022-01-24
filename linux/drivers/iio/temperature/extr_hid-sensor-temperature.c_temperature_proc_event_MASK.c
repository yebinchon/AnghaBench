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
struct TYPE_2__ {int /*<<< orphan*/  data_ready; } ;
struct temperature_state {int /*<<< orphan*/  temperature_data; TYPE_1__ common_attributes; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct temperature_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct hid_sensor_hub_device *hsdev,
				unsigned int usage_id, void *pdev)
{
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct temperature_state *temp_st = FUNC2(indio_dev);

	if (FUNC0(&temp_st->common_attributes.data_ready))
		FUNC3(indio_dev,
				&temp_st->temperature_data,
				FUNC1(indio_dev));

	return 0;
}