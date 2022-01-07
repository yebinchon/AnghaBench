
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pm8xxx_xoadc {int lock; int map; int dev; int complete; TYPE_1__* variant; } ;
struct pm8xxx_chan_info {int amux_ip_rsv; unsigned int decimation; TYPE_2__* hwchan; int name; } ;
struct TYPE_4__ {unsigned int amux_channel; unsigned int pre_scale_mux; } ;
struct TYPE_3__ {scalar_t__ broken_ratiometric; } ;


 unsigned int ADC_AMUX_PREMUX_SHIFT ;
 unsigned int ADC_AMUX_SEL_SHIFT ;
 int ADC_ARB_USRP_AMUX_CNTRL ;
 int ADC_ARB_USRP_ANA_PARAM ;
 unsigned int ADC_ARB_USRP_ANA_PARAM_DIS ;
 unsigned int ADC_ARB_USRP_ANA_PARAM_EN ;
 int ADC_ARB_USRP_CNTRL ;
 unsigned int ADC_ARB_USRP_CNTRL_EN_ARB ;
 unsigned int ADC_ARB_USRP_CNTRL_REQ ;
 int ADC_ARB_USRP_DATA0 ;
 int ADC_ARB_USRP_DATA1 ;
 int ADC_ARB_USRP_DIG_PARAM ;
 unsigned int ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT0 ;
 unsigned int ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT1 ;
 int ADC_ARB_USRP_RSV ;
 int ADC_ARB_USRP_RSV_DTEST0 ;
 int ADC_ARB_USRP_RSV_DTEST1 ;
 int ADC_ARB_USRP_RSV_IP_SEL0 ;
 int ADC_ARB_USRP_RSV_IP_SEL1 ;
 int ADC_ARB_USRP_RSV_OP ;
 int ADC_ARB_USRP_RSV_RST ;
 int ADC_ARB_USRP_RSV_TRM ;
 unsigned int ADC_DIG_PARAM_DEC_SHIFT ;
 int ADC_RSV_IP_SEL_SHIFT ;
 int ETIMEDOUT ;
 unsigned int PM8XXX_CHANNEL_MUXOFF ;
 int VADC_CONV_TIME_MAX_US ;
 int dev_dbg (int ,char*,int ,unsigned int,unsigned int,int) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,unsigned int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int pm8xxx_read_channel_rsv(struct pm8xxx_xoadc *adc,
       const struct pm8xxx_chan_info *ch,
       u8 rsv, u16 *adc_code,
       bool force_ratiometric)
{
 int ret;
 unsigned int val;
 u8 rsvmask, rsvval;
 u8 lsb, msb;

 dev_dbg(adc->dev, "read channel \"%s\", amux %d, prescale/mux: %d, rsv %d\n",
  ch->name, ch->hwchan->amux_channel, ch->hwchan->pre_scale_mux, rsv);

 mutex_lock(&adc->lock);


 val = ch->hwchan->amux_channel << ADC_AMUX_SEL_SHIFT;
 val |= ch->hwchan->pre_scale_mux << ADC_AMUX_PREMUX_SHIFT;
 ret = regmap_write(adc->map, ADC_ARB_USRP_AMUX_CNTRL, val);
 if (ret)
  goto unlock;


 rsvmask = (ADC_ARB_USRP_RSV_RST | ADC_ARB_USRP_RSV_DTEST0 |
     ADC_ARB_USRP_RSV_DTEST1 | ADC_ARB_USRP_RSV_OP);
 if (adc->variant->broken_ratiometric && !force_ratiometric) {
  if (ch->hwchan->amux_channel == PM8XXX_CHANNEL_MUXOFF)
   rsvval = ADC_ARB_USRP_RSV_IP_SEL0;
  else
   rsvval = ADC_ARB_USRP_RSV_IP_SEL1;
 } else {
  if (rsv == 0xff)
   rsvval = (ch->amux_ip_rsv << ADC_RSV_IP_SEL_SHIFT) |
    ADC_ARB_USRP_RSV_TRM;
  else
   rsvval = (rsv << ADC_RSV_IP_SEL_SHIFT) |
    ADC_ARB_USRP_RSV_TRM;
 }

 ret = regmap_update_bits(adc->map,
     ADC_ARB_USRP_RSV,
     ~rsvmask,
     rsvval);
 if (ret)
  goto unlock;

 ret = regmap_write(adc->map, ADC_ARB_USRP_ANA_PARAM,
      ADC_ARB_USRP_ANA_PARAM_DIS);
 if (ret)
  goto unlock;


 ret = regmap_write(adc->map, ADC_ARB_USRP_DIG_PARAM,
      ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT0 |
      ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT1 |
      ch->decimation << ADC_DIG_PARAM_DEC_SHIFT);
 if (ret)
  goto unlock;

 ret = regmap_write(adc->map, ADC_ARB_USRP_ANA_PARAM,
      ADC_ARB_USRP_ANA_PARAM_EN);
 if (ret)
  goto unlock;


 ret = regmap_write(adc->map, ADC_ARB_USRP_CNTRL,
      ADC_ARB_USRP_CNTRL_EN_ARB);
 if (ret)
  goto unlock;
 ret = regmap_write(adc->map, ADC_ARB_USRP_CNTRL,
      ADC_ARB_USRP_CNTRL_EN_ARB);
 if (ret)
  goto unlock;



 reinit_completion(&adc->complete);
 ret = regmap_write(adc->map, ADC_ARB_USRP_CNTRL,
      ADC_ARB_USRP_CNTRL_EN_ARB |
      ADC_ARB_USRP_CNTRL_REQ);
 if (ret)
  goto unlock;


 ret = wait_for_completion_timeout(&adc->complete,
       VADC_CONV_TIME_MAX_US);
 if (!ret) {
  dev_err(adc->dev, "conversion timed out\n");
  ret = -ETIMEDOUT;
  goto unlock;
 }

 ret = regmap_read(adc->map, ADC_ARB_USRP_DATA0, &val);
 if (ret)
  goto unlock;
 lsb = val;
 ret = regmap_read(adc->map, ADC_ARB_USRP_DATA1, &val);
 if (ret)
  goto unlock;
 msb = val;
 *adc_code = (msb << 8) | lsb;


 ret = regmap_write(adc->map, ADC_ARB_USRP_CNTRL, 0);
 if (ret)
  goto unlock;
 ret = regmap_write(adc->map, ADC_ARB_USRP_CNTRL, 0);
 if (ret)
  goto unlock;

unlock:
 mutex_unlock(&adc->lock);
 return ret;
}
