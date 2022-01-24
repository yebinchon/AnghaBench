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
struct iio_dev {int currentmode; int /*<<< orphan*/  dev; int /*<<< orphan*/  active_scan_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  channels_bitmask; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;

/* Variables and functions */
 scalar_t__ AT91_SAMA5D2_MAX_CHAN_IDX ; 
 int EINVAL ; 
 int INDIO_ALL_TRIGGERED_MODES ; 
 int FUNC0 (struct at91_adc_state*,int) ; 
 int FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct at91_adc_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	int ret;
	struct at91_adc_state *st = FUNC4(indio_dev);

	/* check if we are enabling triggered buffer or the touchscreen */
	if (FUNC2(indio_dev->active_scan_mask,
			  &st->touch_st.channels_bitmask,
			  AT91_SAMA5D2_MAX_CHAN_IDX + 1)) {
		/* touchscreen enabling */
		return FUNC0(st, true);
	}
	/* if we are not in triggered mode, we cannot enable the buffer. */
	if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
		return -EINVAL;

	/* we continue with the triggered buffer */
	ret = FUNC1(indio_dev);
	if (ret) {
		FUNC3(&indio_dev->dev, "buffer postenable failed\n");
		return ret;
	}

	return FUNC5(indio_dev);
}