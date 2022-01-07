
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iadc_chip {int complete; int poll_eoc; } ;


 int IADC_CH_SEL_CTL ;
 int IADC_CONV_REQ ;
 int IADC_CONV_REQ_SET ;
 int IADC_DEF_AVG_SAMPLES ;
 int IADC_DEF_DECIMATION ;
 int IADC_DEF_HW_SETTLE_TIME ;
 int IADC_DIG_DEC_RATIO_SEL_SHIFT ;
 int IADC_DIG_PARAM ;
 int IADC_FAST_AVG_CTL ;
 int IADC_FAST_AVG_EN ;
 int IADC_FAST_AVG_EN_SET ;
 int IADC_HW_SETTLE_DELAY ;
 int IADC_MODE_CTL ;
 int IADC_OP_MODE_NORMAL ;
 int IADC_OP_MODE_SHIFT ;
 int IADC_TRIM_EN ;
 int iadc_set_state (struct iadc_chip*,int) ;
 int iadc_write (struct iadc_chip*,int ,int) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int iadc_configure(struct iadc_chip *iadc, int channel)
{
 u8 decim, mode;
 int ret;


 mode = (IADC_OP_MODE_NORMAL << IADC_OP_MODE_SHIFT) | IADC_TRIM_EN;
 ret = iadc_write(iadc, IADC_MODE_CTL, mode);
 if (ret < 0)
  return ret;


 ret = iadc_write(iadc, IADC_CH_SEL_CTL, channel);
 if (ret < 0)
  return ret;


 decim = IADC_DEF_DECIMATION << IADC_DIG_DEC_RATIO_SEL_SHIFT;
 ret = iadc_write(iadc, IADC_DIG_PARAM, decim);
 if (ret < 0)
  return ret;


 ret = iadc_write(iadc, IADC_HW_SETTLE_DELAY, IADC_DEF_HW_SETTLE_TIME);
 if (ret < 0)
  return ret;

 ret = iadc_write(iadc, IADC_FAST_AVG_CTL, IADC_DEF_AVG_SAMPLES);
 if (ret < 0)
  return ret;

 if (IADC_DEF_AVG_SAMPLES)
  ret = iadc_write(iadc, IADC_FAST_AVG_EN, IADC_FAST_AVG_EN_SET);
 else
  ret = iadc_write(iadc, IADC_FAST_AVG_EN, 0);

 if (ret < 0)
  return ret;

 if (!iadc->poll_eoc)
  reinit_completion(&iadc->complete);

 ret = iadc_set_state(iadc, 1);
 if (ret < 0)
  return ret;


 return iadc_write(iadc, IADC_CONV_REQ, IADC_CONV_REQ_SET);
}
