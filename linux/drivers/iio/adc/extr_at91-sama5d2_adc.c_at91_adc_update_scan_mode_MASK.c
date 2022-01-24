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
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  channels_bitmask; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;

/* Variables and functions */
 scalar_t__ AT91_SAMA5D2_MAX_CHAN_IDX ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long const*,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long const*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct at91_adc_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				     const unsigned long *scan_mask)
{
	struct at91_adc_state *st = FUNC2(indio_dev);

	if (FUNC1(scan_mask, &st->touch_st.channels_bitmask,
			  AT91_SAMA5D2_MAX_CHAN_IDX + 1))
		return 0;
	/*
	 * if the new bitmap is a combination of touchscreen and regular
	 * channels, then we are not fine
	 */
	if (FUNC0(&st->touch_st.channels_bitmask, scan_mask,
			      AT91_SAMA5D2_MAX_CHAN_IDX + 1))
		return -EINVAL;
	return 0;
}