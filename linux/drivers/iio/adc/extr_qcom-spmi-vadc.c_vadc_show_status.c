
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vadc_priv {int dev; } ;


 int VADC_ADC_CH_SEL_CTL ;
 int VADC_ADC_DIG_PARAM ;
 int VADC_CONV_REQ ;
 int VADC_EN_CTL1 ;
 int VADC_MODE_CTL ;
 int VADC_STATUS1 ;
 int dev_err (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int vadc_read (struct vadc_priv*,int ,int *) ;

__attribute__((used)) static void vadc_show_status(struct vadc_priv *vadc)
{
 u8 mode, sta1, chan, dig, en, req;
 int ret;

 ret = vadc_read(vadc, VADC_MODE_CTL, &mode);
 if (ret)
  return;

 ret = vadc_read(vadc, VADC_ADC_DIG_PARAM, &dig);
 if (ret)
  return;

 ret = vadc_read(vadc, VADC_ADC_CH_SEL_CTL, &chan);
 if (ret)
  return;

 ret = vadc_read(vadc, VADC_CONV_REQ, &req);
 if (ret)
  return;

 ret = vadc_read(vadc, VADC_STATUS1, &sta1);
 if (ret)
  return;

 ret = vadc_read(vadc, VADC_EN_CTL1, &en);
 if (ret)
  return;

 dev_err(vadc->dev,
  "mode:%02x en:%02x chan:%02x dig:%02x req:%02x sta1:%02x\n",
  mode, en, chan, dig, req, sta1);
}
