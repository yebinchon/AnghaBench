#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stm32_dfsdm_adc {int /*<<< orphan*/  completion; int /*<<< orphan*/  hwc; TYPE_1__* dfsdm; int /*<<< orphan*/  oversamp; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  modes; TYPE_2__ dev; struct iio_chan_spec* channels; } ;
struct iio_chan_spec {int scan_index; } ;
struct TYPE_6__ {int num_chs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFSDM_DEFAULT_OVERSAMPLING ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INDIO_HARDWARE_TRIGGERED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct iio_chan_spec* FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct stm32_dfsdm_adc* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct iio_dev*,struct iio_chan_spec*) ; 
 int /*<<< orphan*/  stm32_dfsdm_adc_trigger_handler ; 
 int /*<<< orphan*/  stm32_dfsdm_buffer_setup_ops ; 
 int FUNC10 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 scalar_t__ FUNC12 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC13(struct iio_dev *indio_dev)
{
	struct iio_chan_spec *ch;
	struct stm32_dfsdm_adc *adc = FUNC5(indio_dev);
	int num_ch;
	int ret, chan_idx;

	adc->oversamp = DFSDM_DEFAULT_OVERSAMPLING;
	ret = FUNC10(indio_dev, adc->oversamp);
	if (ret < 0)
		return ret;

	num_ch = FUNC8(indio_dev->dev.of_node,
					     "st,adc-channels");
	if (num_ch < 0 || num_ch > adc->dfsdm->num_chs) {
		FUNC2(&indio_dev->dev, "Bad st,adc-channels\n");
		return num_ch < 0 ? num_ch : -EINVAL;
	}

	/* Bind to SD modulator IIO device */
	adc->hwc = FUNC3(&indio_dev->dev);
	if (FUNC0(adc->hwc))
		return -EPROBE_DEFER;

	ch = FUNC4(&indio_dev->dev, num_ch, sizeof(*ch),
			  GFP_KERNEL);
	if (!ch)
		return -ENOMEM;

	for (chan_idx = 0; chan_idx < num_ch; chan_idx++) {
		ch[chan_idx].scan_index = chan_idx;
		ret = FUNC9(indio_dev, &ch[chan_idx]);
		if (ret < 0) {
			FUNC2(&indio_dev->dev, "Channels init failed\n");
			return ret;
		}
	}

	indio_dev->num_channels = num_ch;
	indio_dev->channels = ch;

	FUNC7(&adc->completion);

	/* Optionally request DMA */
	if (FUNC12(indio_dev)) {
		FUNC1(&indio_dev->dev, "No DMA support\n");
		return 0;
	}

	ret = FUNC6(indio_dev,
					 &iio_pollfunc_store_time,
					 &stm32_dfsdm_adc_trigger_handler,
					 &stm32_dfsdm_buffer_setup_ops);
	if (ret) {
		FUNC11(indio_dev);
		FUNC2(&indio_dev->dev, "buffer setup failed\n");
		return ret;
	}

	/* lptimer/timer hardware triggers */
	indio_dev->modes |= INDIO_HARDWARE_TRIGGERED;

	return 0;
}