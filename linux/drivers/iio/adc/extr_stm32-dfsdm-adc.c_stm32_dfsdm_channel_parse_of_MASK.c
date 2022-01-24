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
struct stm32_dfsdm_channel {size_t id; int type; int src; size_t alt_si; } ;
struct stm32_dfsdm {size_t num_chs; struct stm32_dfsdm_channel* ch_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {int scan_index; size_t channel; char const* datasheet_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,size_t*) ; 
 int /*<<< orphan*/  stm32_dfsdm_chan_src ; 
 int /*<<< orphan*/  stm32_dfsdm_chan_type ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct stm32_dfsdm *dfsdm,
					struct iio_dev *indio_dev,
					struct iio_chan_spec *ch)
{
	struct stm32_dfsdm_channel *df_ch;
	const char *of_str;
	int chan_idx = ch->scan_index;
	int ret, val;

	ret = FUNC2(indio_dev->dev.of_node,
					 "st,adc-channels", chan_idx,
					 &ch->channel);
	if (ret < 0) {
		FUNC0(&indio_dev->dev,
			" Error parsing 'st,adc-channels' for idx %d\n",
			chan_idx);
		return ret;
	}
	if (ch->channel >= dfsdm->num_chs) {
		FUNC0(&indio_dev->dev,
			" Error bad channel number %d (max = %d)\n",
			ch->channel, dfsdm->num_chs);
		return -EINVAL;
	}

	ret = FUNC1(indio_dev->dev.of_node,
					    "st,adc-channel-names", chan_idx,
					    &ch->datasheet_name);
	if (ret < 0) {
		FUNC0(&indio_dev->dev,
			" Error parsing 'st,adc-channel-names' for idx %d\n",
			chan_idx);
		return ret;
	}

	df_ch =  &dfsdm->ch_list[ch->channel];
	df_ch->id = ch->channel;

	ret = FUNC1(indio_dev->dev.of_node,
					    "st,adc-channel-types", chan_idx,
					    &of_str);
	if (!ret) {
		val = FUNC3(of_str, stm32_dfsdm_chan_type);
		if (val < 0)
			return val;
	} else {
		val = 0;
	}
	df_ch->type = val;

	ret = FUNC1(indio_dev->dev.of_node,
					    "st,adc-channel-clk-src", chan_idx,
					    &of_str);
	if (!ret) {
		val = FUNC3(of_str, stm32_dfsdm_chan_src);
		if (val < 0)
			return val;
	} else {
		val = 0;
	}
	df_ch->src = val;

	ret = FUNC2(indio_dev->dev.of_node,
					 "st,adc-alt-channel", chan_idx,
					 &df_ch->alt_si);
	if (ret < 0)
		df_ch->alt_si = 0;

	return 0;
}