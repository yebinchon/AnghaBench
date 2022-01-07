
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7d_adc {scalar_t__ regs; int dev; int completion; int value; } ;
typedef int irqreturn_t ;


 scalar_t__ IMX7D_REG_ADC_INT_STATUS ;
 int IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT ;
 int IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_err (int ,char*,int) ;
 int imx7d_adc_read_data (struct imx7d_adc*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t imx7d_adc_isr(int irq, void *dev_id)
{
 struct imx7d_adc *info = dev_id;
 int status;

 status = readl(info->regs + IMX7D_REG_ADC_INT_STATUS);
 if (status & IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS) {
  info->value = imx7d_adc_read_data(info);
  complete(&info->completion);







  status &= ~IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS;
  writel(status, info->regs + IMX7D_REG_ADC_INT_STATUS);
 }





 if (status & IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT) {
  dev_err(info->dev,
   "ADC got conversion time out interrupt: 0x%08x\n",
   status);
  status &= ~IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT;
  writel(status, info->regs + IMX7D_REG_ADC_INT_STATUS);
 }

 return IRQ_HANDLED;
}
