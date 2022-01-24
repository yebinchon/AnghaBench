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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct xoadc_channel {scalar_t__ pre_scale_mux; scalar_t__ amux_channel; int /*<<< orphan*/  scale_fn_type; TYPE_1__ prescale; int /*<<< orphan*/  type; scalar_t__ datasheet_name; } ;
struct pm8xxx_chan_info {char const* name; int decimation; int /*<<< orphan*/  amux_ip_rsv; int /*<<< orphan*/  calibration; struct xoadc_channel const* hwchan; } ;
struct iio_chan_spec {int channel; scalar_t__ address; int info_mask_separate; int indexed; int /*<<< orphan*/  type; scalar_t__ datasheet_name; } ;
struct device_node {char* name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMUX_RSV3 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_PROCESSED ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_RAW ; 
 int /*<<< orphan*/  VADC_CALIB_ABSOLUTE ; 
 int /*<<< orphan*/  VADC_CALIB_RATIOMETRIC ; 
 int VADC_DEF_DECIMATION ; 
 scalar_t__ XOADC_RSV_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__,scalar_t__,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,...) ; 
 int FUNC3 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC4 (struct device_node*,char*,int,scalar_t__*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				      struct device_node *np,
				      const struct xoadc_channel *hw_channels,
				      struct iio_chan_spec *iio_chan,
				      struct pm8xxx_chan_info *ch)
{
	const char *name = np->name;
	const struct xoadc_channel *hwchan;
	u32 pre_scale_mux, amux_channel;
	u32 rsv, dec;
	int ret;
	int chid;

	ret = FUNC4(np, "reg", 0, &pre_scale_mux);
	if (ret) {
		FUNC2(dev, "invalid pre scale/mux number %s\n", name);
		return ret;
	}
	ret = FUNC4(np, "reg", 1, &amux_channel);
	if (ret) {
		FUNC2(dev, "invalid amux channel number %s\n", name);
		return ret;
	}

	/* Find the right channel setting */
	chid = 0;
	hwchan = &hw_channels[0];
	while (hwchan && hwchan->datasheet_name) {
		if (hwchan->pre_scale_mux == pre_scale_mux &&
		    hwchan->amux_channel == amux_channel)
			break;
		hwchan++;
		chid++;
	}
	/* The sentinel does not have a name assigned */
	if (!hwchan->datasheet_name) {
		FUNC2(dev, "could not locate channel %02x/%02x\n",
			pre_scale_mux, amux_channel);
		return -EINVAL;
	}
	ch->name = name;
	ch->hwchan = hwchan;
	/* Everyone seems to use absolute calibration except in special cases */
	ch->calibration = VADC_CALIB_ABSOLUTE;
	/* Everyone seems to use default ("type 2") decimation */
	ch->decimation = VADC_DEF_DECIMATION;

	if (!FUNC3(np, "qcom,ratiometric", &rsv)) {
		ch->calibration = VADC_CALIB_RATIOMETRIC;
		if (rsv > XOADC_RSV_MAX) {
			FUNC2(dev, "%s too large RSV value %d\n", name, rsv);
			return -EINVAL;
		}
		if (rsv == AMUX_RSV3) {
			FUNC2(dev, "%s invalid RSV value %d\n", name, rsv);
			return -EINVAL;
		}
	}

	/* Optional decimation, if omitted we use the default */
	ret = FUNC3(np, "qcom,decimation", &dec);
	if (!ret) {
		ret = FUNC5(dec);
		if (ret < 0) {
			FUNC2(dev, "%s invalid decimation %d\n",
				name, dec);
			return ret;
		}
		ch->decimation = ret;
	}

	iio_chan->channel = chid;
	iio_chan->address = hwchan->amux_channel;
	iio_chan->datasheet_name = hwchan->datasheet_name;
	iio_chan->type = hwchan->type;
	/* All channels are raw or processed */
	iio_chan->info_mask_separate = FUNC0(IIO_CHAN_INFO_RAW) |
		FUNC0(IIO_CHAN_INFO_PROCESSED);
	iio_chan->indexed = 1;

	FUNC1(dev, "channel [PRESCALE/MUX: %02x AMUX: %02x] \"%s\" "
		"ref voltage: %d, decimation %d "
		"prescale %d/%d, scale function %d\n",
		hwchan->pre_scale_mux, hwchan->amux_channel, ch->name,
		ch->amux_ip_rsv, ch->decimation, hwchan->prescale.num,
		hwchan->prescale.den, hwchan->scale_fn_type);

	return 0;
}