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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct tiadc_device {int channels; int* channel_step; int /*<<< orphan*/  fifo1_lock; int /*<<< orphan*/  mfd_tscadc; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FIFOREAD_CHNLID_MASK ; 
 unsigned int FIFOREAD_DATA_MASK ; 
 int IDLE_TIMEOUT ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  REG_FIFO1 ; 
 int /*<<< orphan*/  REG_FIFO1CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tiadc_device*,struct iio_chan_spec const*) ; 
 scalar_t__ FUNC3 (struct iio_dev*) ; 
 struct tiadc_device* FUNC4 (struct iio_dev*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct tiadc_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev,
		struct iio_chan_spec const *chan,
		int *val, int *val2, long mask)
{
	struct tiadc_device *adc_dev = FUNC4(indio_dev);
	int ret = IIO_VAL_INT;
	int i, map_val;
	unsigned int fifo1count, read, stepid;
	bool found = false;
	u32 step_en;
	unsigned long timeout;

	if (FUNC3(indio_dev))
		return -EBUSY;

	step_en = FUNC2(adc_dev, chan);
	if (!step_en)
		return -EINVAL;

	FUNC6(&adc_dev->fifo1_lock);
	fifo1count = FUNC8(adc_dev, REG_FIFO1CNT);
	while (fifo1count--)
		FUNC8(adc_dev, REG_FIFO1);

	FUNC1(adc_dev->mfd_tscadc, step_en);

	timeout = jiffies + FUNC5
				(IDLE_TIMEOUT * adc_dev->channels);
	/* Wait for Fifo threshold interrupt */
	while (1) {
		fifo1count = FUNC8(adc_dev, REG_FIFO1CNT);
		if (fifo1count)
			break;

		if (FUNC9(jiffies, timeout)) {
			FUNC0(adc_dev->mfd_tscadc);
			ret = -EAGAIN;
			goto err_unlock;
		}
	}
	map_val = adc_dev->channel_step[chan->scan_index];

	/*
	 * We check the complete FIFO. We programmed just one entry but in case
	 * something went wrong we left empty handed (-EAGAIN previously) and
	 * then the value apeared somehow in the FIFO we would have two entries.
	 * Therefore we read every item and keep only the latest version of the
	 * requested channel.
	 */
	for (i = 0; i < fifo1count; i++) {
		read = FUNC8(adc_dev, REG_FIFO1);
		stepid = read & FIFOREAD_CHNLID_MASK;
		stepid = stepid >> 0x10;

		if (stepid == map_val) {
			read = read & FIFOREAD_DATA_MASK;
			found = true;
			*val = (u16) read;
		}
	}
	FUNC0(adc_dev->mfd_tscadc);

	if (!found)
		ret =  -EBUSY;

err_unlock:
	FUNC7(&adc_dev->fifo1_lock);
	return ret;
}