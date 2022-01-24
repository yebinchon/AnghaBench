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
typedef  int u32 ;
struct sun4i_gpadc_iio {unsigned int fifo_data_irq; TYPE_2__* data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  completion; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct TYPE_4__ {int tp_mode_en; int tp_adc_select; int (* adc_chan_select ) (int) ;int adc_chan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_GPADC_CTRL1 ; 
 int /*<<< orphan*/  SUN4I_GPADC_INT_FIFOC ; 
 int SUN4I_GPADC_INT_FIFOC_TP_FIFO_FLUSH ; 
 int FUNC0 (int) ; 
 struct sun4i_gpadc_iio* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev, int channel,
				 unsigned int irq)
{
	struct sun4i_gpadc_iio *info = FUNC1(indio_dev);
	int ret;
	u32 reg;

	FUNC3(indio_dev->dev.parent);

	FUNC6(&info->completion);

	ret = FUNC5(info->regmap, SUN4I_GPADC_INT_FIFOC,
			   FUNC0(1) |
			   SUN4I_GPADC_INT_FIFOC_TP_FIFO_FLUSH);
	if (ret)
		return ret;

	ret = FUNC4(info->regmap, SUN4I_GPADC_CTRL1, &reg);
	if (ret)
		return ret;

	if (irq == info->fifo_data_irq) {
		ret = FUNC5(info->regmap, SUN4I_GPADC_CTRL1,
				   info->data->tp_mode_en |
				   info->data->tp_adc_select |
				   info->data->adc_chan_select(channel));
		/*
		 * When the IP changes channel, it needs a bit of time to get
		 * correct values.
		 */
		if ((reg & info->data->adc_chan_mask) !=
			 info->data->adc_chan_select(channel))
			FUNC2(10);

	} else {
		/*
		 * The temperature sensor returns valid data only when the ADC
		 * operates in touchscreen mode.
		 */
		ret = FUNC5(info->regmap, SUN4I_GPADC_CTRL1,
				   info->data->tp_mode_en);
	}

	if (ret)
		return ret;

	/*
	 * When the IP changes mode between ADC or touchscreen, it
	 * needs a bit of time to get correct values.
	 */
	if ((reg & info->data->tp_adc_select) != info->data->tp_adc_select)
		FUNC2(100);

	return 0;
}