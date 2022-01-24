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
typedef  int /*<<< orphan*/  u16 ;
struct iio_chan_spec {int dummy; } ;
struct adc5_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; scalar_t__ poll_eoc; } ;
struct adc5_channel_prop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC5_CONV_TIMEOUT ; 
 int FUNC0 (struct adc5_chip*,struct adc5_channel_prop*) ; 
 int FUNC1 (struct adc5_chip*) ; 
 int FUNC2 (struct adc5_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct adc5_chip *adc,
			struct adc5_channel_prop *prop,
			struct iio_chan_spec const *chan,
			u16 *data_volt, u16 *data_cur)
{
	int ret;

	FUNC3(&adc->lock);

	ret = FUNC0(adc, prop);
	if (ret) {
		FUNC6("ADC configure failed with %d\n", ret);
		goto unlock;
	}

	if (adc->poll_eoc) {
		ret = FUNC1(adc);
		if (ret < 0) {
			FUNC6("EOC bit not set\n");
			goto unlock;
		}
	} else {
		ret = FUNC7(&adc->complete,
							ADC5_CONV_TIMEOUT);
		if (!ret) {
			FUNC5("Did not get completion timeout.\n");
			ret = FUNC1(adc);
			if (ret < 0) {
				FUNC6("EOC bit not set\n");
				goto unlock;
			}
		}
	}

	ret = FUNC2(adc, data_volt);
unlock:
	FUNC4(&adc->lock);

	return ret;
}