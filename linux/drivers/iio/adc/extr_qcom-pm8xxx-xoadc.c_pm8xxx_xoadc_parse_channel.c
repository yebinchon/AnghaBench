
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int den; int num; } ;
struct xoadc_channel {scalar_t__ pre_scale_mux; scalar_t__ amux_channel; int scale_fn_type; TYPE_1__ prescale; int type; scalar_t__ datasheet_name; } ;
struct pm8xxx_chan_info {char const* name; int decimation; int amux_ip_rsv; int calibration; struct xoadc_channel const* hwchan; } ;
struct iio_chan_spec {int channel; scalar_t__ address; int info_mask_separate; int indexed; int type; scalar_t__ datasheet_name; } ;
struct device_node {char* name; } ;
struct device {int dummy; } ;


 scalar_t__ AMUX_RSV3 ;
 int BIT (int ) ;
 int EINVAL ;
 int IIO_CHAN_INFO_PROCESSED ;
 int IIO_CHAN_INFO_RAW ;
 int VADC_CALIB_ABSOLUTE ;
 int VADC_CALIB_RATIOMETRIC ;
 int VADC_DEF_DECIMATION ;
 scalar_t__ XOADC_RSV_MAX ;
 int dev_dbg (struct device*,char*,scalar_t__,scalar_t__,char const*,int ,int,int ,int ,int ) ;
 int dev_err (struct device*,char*,char const*,...) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,scalar_t__*) ;
 int qcom_vadc_decimation_from_dt (scalar_t__) ;

__attribute__((used)) static int pm8xxx_xoadc_parse_channel(struct device *dev,
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

 ret = of_property_read_u32_index(np, "reg", 0, &pre_scale_mux);
 if (ret) {
  dev_err(dev, "invalid pre scale/mux number %s\n", name);
  return ret;
 }
 ret = of_property_read_u32_index(np, "reg", 1, &amux_channel);
 if (ret) {
  dev_err(dev, "invalid amux channel number %s\n", name);
  return ret;
 }


 chid = 0;
 hwchan = &hw_channels[0];
 while (hwchan && hwchan->datasheet_name) {
  if (hwchan->pre_scale_mux == pre_scale_mux &&
      hwchan->amux_channel == amux_channel)
   break;
  hwchan++;
  chid++;
 }

 if (!hwchan->datasheet_name) {
  dev_err(dev, "could not locate channel %02x/%02x\n",
   pre_scale_mux, amux_channel);
  return -EINVAL;
 }
 ch->name = name;
 ch->hwchan = hwchan;

 ch->calibration = VADC_CALIB_ABSOLUTE;

 ch->decimation = VADC_DEF_DECIMATION;

 if (!of_property_read_u32(np, "qcom,ratiometric", &rsv)) {
  ch->calibration = VADC_CALIB_RATIOMETRIC;
  if (rsv > XOADC_RSV_MAX) {
   dev_err(dev, "%s too large RSV value %d\n", name, rsv);
   return -EINVAL;
  }
  if (rsv == AMUX_RSV3) {
   dev_err(dev, "%s invalid RSV value %d\n", name, rsv);
   return -EINVAL;
  }
 }


 ret = of_property_read_u32(np, "qcom,decimation", &dec);
 if (!ret) {
  ret = qcom_vadc_decimation_from_dt(dec);
  if (ret < 0) {
   dev_err(dev, "%s invalid decimation %d\n",
    name, dec);
   return ret;
  }
  ch->decimation = ret;
 }

 iio_chan->channel = chid;
 iio_chan->address = hwchan->amux_channel;
 iio_chan->datasheet_name = hwchan->datasheet_name;
 iio_chan->type = hwchan->type;

 iio_chan->info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
  BIT(IIO_CHAN_INFO_PROCESSED);
 iio_chan->indexed = 1;

 dev_dbg(dev, "channel [PRESCALE/MUX: %02x AMUX: %02x] \"%s\" "
  "ref voltage: %d, decimation %d "
  "prescale %d/%d, scale function %d\n",
  hwchan->pre_scale_mux, hwchan->amux_channel, ch->name,
  ch->amux_ip_rsv, ch->decimation, hwchan->prescale.num,
  hwchan->prescale.den, hwchan->scale_fn_type);

 return 0;
}
