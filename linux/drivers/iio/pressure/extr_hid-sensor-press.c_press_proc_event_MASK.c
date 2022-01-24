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
struct press_state {int /*<<< orphan*/  press_data; TYPE_1__ common_attributes; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int) ; 
 struct press_state* FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct hid_sensor_hub_device *hsdev,
				unsigned usage_id,
				void *priv)
{
	struct iio_dev *indio_dev = FUNC4(priv);
	struct press_state *press_state = FUNC3(indio_dev);

	FUNC1(&indio_dev->dev, "press_proc_event\n");
	if (FUNC0(&press_state->common_attributes.data_ready))
		FUNC2(indio_dev,
				&press_state->press_data,
				sizeof(press_state->press_data));

	return 0;
}