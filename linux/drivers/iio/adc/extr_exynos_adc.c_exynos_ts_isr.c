
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int dummy; } ;
struct exynos_adc {int regs; TYPE_1__* input; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ users; } ;


 int ABS_X ;
 int ABS_Y ;
 int ADC_DATX_MASK ;
 int ADC_DATX_PRESSED ;
 int ADC_DATY_MASK ;
 int ADC_V1_CLRINTPNDNUP (int ) ;
 int BTN_TOUCH ;
 int ETIMEDOUT ;
 int IRQ_HANDLED ;
 struct iio_dev* dev_get_drvdata (int ) ;
 int exynos_read_s3c64xx_ts (struct iio_dev*,int*,int*) ;
 int input_report_abs (TYPE_1__*,int ,int) ;
 int input_report_key (TYPE_1__*,int ,int) ;
 int input_sync (TYPE_1__*) ;
 int usleep_range (int,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static irqreturn_t exynos_ts_isr(int irq, void *dev_id)
{
 struct exynos_adc *info = dev_id;
 struct iio_dev *dev = dev_get_drvdata(info->dev);
 u32 x, y;
 bool pressed;
 int ret;

 while (info->input->users) {
  ret = exynos_read_s3c64xx_ts(dev, &x, &y);
  if (ret == -ETIMEDOUT)
   break;

  pressed = x & y & ADC_DATX_PRESSED;
  if (!pressed) {
   input_report_key(info->input, BTN_TOUCH, 0);
   input_sync(info->input);
   break;
  }

  input_report_abs(info->input, ABS_X, x & ADC_DATX_MASK);
  input_report_abs(info->input, ABS_Y, y & ADC_DATY_MASK);
  input_report_key(info->input, BTN_TOUCH, 1);
  input_sync(info->input);

  usleep_range(1000, 1100);
 };

 writel(0, ADC_V1_CLRINTPNDNUP(info->regs));

 return IRQ_HANDLED;
}
