
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iadc_chip {int dev; } ;


 int IADC_CH_SEL_CTL ;
 int IADC_CONV_REQ ;
 int IADC_DIG_PARAM ;
 int IADC_EN_CTL1 ;
 int IADC_MODE_CTL ;
 int IADC_STATUS1 ;
 int dev_err (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int iadc_read (struct iadc_chip*,int ,int *) ;

__attribute__((used)) static void iadc_status_show(struct iadc_chip *iadc)
{
 u8 mode, sta1, chan, dig, en, req;
 int ret;

 ret = iadc_read(iadc, IADC_MODE_CTL, &mode);
 if (ret < 0)
  return;

 ret = iadc_read(iadc, IADC_DIG_PARAM, &dig);
 if (ret < 0)
  return;

 ret = iadc_read(iadc, IADC_CH_SEL_CTL, &chan);
 if (ret < 0)
  return;

 ret = iadc_read(iadc, IADC_CONV_REQ, &req);
 if (ret < 0)
  return;

 ret = iadc_read(iadc, IADC_STATUS1, &sta1);
 if (ret < 0)
  return;

 ret = iadc_read(iadc, IADC_EN_CTL1, &en);
 if (ret < 0)
  return;

 dev_err(iadc->dev,
  "mode:%02x en:%02x chan:%02x dig:%02x req:%02x sta1:%02x\n",
  mode, en, chan, dig, req, sta1);
}
