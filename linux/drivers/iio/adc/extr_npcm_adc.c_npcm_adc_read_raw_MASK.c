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
struct npcm_adc {int adc_sample_hz; int /*<<< orphan*/  vref; int /*<<< orphan*/  dev; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NPCM_INT_VREF_MV ; 
 int NPCM_RESOLUTION_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct npcm_adc* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct npcm_adc*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int *val,
			     int *val2, long mask)
{
	int ret;
	int vref_uv;
	struct npcm_adc *info = FUNC2(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC3(&indio_dev->mlock);
		ret = FUNC5(info, val, chan->channel);
		FUNC4(&indio_dev->mlock);
		if (ret) {
			FUNC1(info->dev, "NPCM ADC read failed\n");
			return ret;
		}
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		if (!FUNC0(info->vref)) {
			vref_uv = FUNC6(info->vref);
			*val = vref_uv / 1000;
		} else {
			*val = NPCM_INT_VREF_MV;
		}
		*val2 = NPCM_RESOLUTION_BITS;
		return IIO_VAL_FRACTIONAL_LOG2;
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = info->adc_sample_hz;
		return IIO_VAL_INT;
	default:
		return -EINVAL;
	}

	return 0;
}