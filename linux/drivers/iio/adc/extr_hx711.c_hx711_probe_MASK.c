#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct hx711_data {int gain_set; int gain_chan_a; int clock_frequency; int data_ready_delay_ns; void* reg_avdd; void* gpiod_dout; void* gpiod_pd_sck; int /*<<< orphan*/  lock; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int scale; int gain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int HX711_GAIN_MAX ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (struct device*,int) ; 
 void* FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  hx711_chan_spec ; 
 TYPE_2__* hx711_gain_to_scale ; 
 int /*<<< orphan*/  hx711_iio_info ; 
 int /*<<< orphan*/  hx711_trigger ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct hx711_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int FUNC16 (void*) ; 
 int FUNC17 (void*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct hx711_data *hx711_data;
	struct iio_dev *indio_dev;
	int ret;
	int i;

	indio_dev = FUNC6(dev, sizeof(struct hx711_data));
	if (!indio_dev) {
		FUNC3(dev, "failed to allocate IIO device\n");
		return -ENOMEM;
	}

	hx711_data = FUNC9(indio_dev);
	hx711_data->dev = dev;

	FUNC12(&hx711_data->lock);

	/*
	 * PD_SCK stands for power down and serial clock input of HX711
	 * in the driver it is an output
	 */
	hx711_data->gpiod_pd_sck = FUNC5(dev, "sck", GPIOD_OUT_LOW);
	if (FUNC1(hx711_data->gpiod_pd_sck)) {
		FUNC3(dev, "failed to get sck-gpiod: err=%ld\n",
					FUNC2(hx711_data->gpiod_pd_sck));
		return FUNC2(hx711_data->gpiod_pd_sck);
	}

	/*
	 * DOUT stands for serial data output of HX711
	 * for the driver it is an input
	 */
	hx711_data->gpiod_dout = FUNC5(dev, "dout", GPIOD_IN);
	if (FUNC1(hx711_data->gpiod_dout)) {
		FUNC3(dev, "failed to get dout-gpiod: err=%ld\n",
					FUNC2(hx711_data->gpiod_dout));
		return FUNC2(hx711_data->gpiod_dout);
	}

	hx711_data->reg_avdd = FUNC7(dev, "avdd");
	if (FUNC1(hx711_data->reg_avdd))
		return FUNC2(hx711_data->reg_avdd);

	ret = FUNC16(hx711_data->reg_avdd);
	if (ret < 0)
		return ret;

	/*
	 * with
	 * full scale differential input range: AVDD / GAIN
	 * full scale output data: 2^24
	 * we can say:
	 *     AVDD / GAIN = 2^24
	 * therefore:
	 *     1 LSB = AVDD / GAIN / 2^24
	 * AVDD is in uV, but we need 10^-9 mV
	 * approximately to fit into a 32 bit number:
	 * 1 LSB = (AVDD * 100) / GAIN / 1678 [10^-9 mV]
	 */
	ret = FUNC17(hx711_data->reg_avdd);
	if (ret < 0)
		goto error_regulator;

	/* we need 10^-9 mV */
	ret *= 100;

	for (i = 0; i < HX711_GAIN_MAX; i++)
		hx711_gain_to_scale[i].scale =
			ret / hx711_gain_to_scale[i].gain / 1678;

	hx711_data->gain_set = 128;
	hx711_data->gain_chan_a = 128;

	hx711_data->clock_frequency = 400000;
	ret = FUNC13(np, "clock-frequency",
					&hx711_data->clock_frequency);

	/*
	 * datasheet says the high level of PD_SCK has a maximum duration
	 * of 50 microseconds
	 */
	if (hx711_data->clock_frequency < 20000) {
		FUNC4(dev, "clock-frequency too low - assuming 400 kHz\n");
		hx711_data->clock_frequency = 400000;
	}

	hx711_data->data_ready_delay_ns =
				1000000000 / hx711_data->clock_frequency;

	FUNC14(pdev, indio_dev);

	indio_dev->name = "hx711";
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->info = &hx711_iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = hx711_chan_spec;
	indio_dev->num_channels = FUNC0(hx711_chan_spec);

	ret = FUNC11(indio_dev, iio_pollfunc_store_time,
							hx711_trigger, NULL);
	if (ret < 0) {
		FUNC3(dev, "setup of iio triggered buffer failed\n");
		goto error_regulator;
	}

	ret = FUNC8(indio_dev);
	if (ret < 0) {
		FUNC3(dev, "Couldn't register the device\n");
		goto error_buffer;
	}

	return 0;

error_buffer:
	FUNC10(indio_dev);

error_regulator:
	FUNC15(hx711_data->reg_avdd);

	return ret;
}