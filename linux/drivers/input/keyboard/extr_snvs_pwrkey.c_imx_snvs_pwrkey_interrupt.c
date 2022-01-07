
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pwrkey_drv_data {int snvs; int check_timer; TYPE_2__* input; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DEBOUNCE_TIME ;
 int IRQ_HANDLED ;
 int SNVS_LPSR_REG ;
 int SNVS_LPSR_SPO ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct pwrkey_drv_data* platform_get_drvdata (struct platform_device*) ;
 int pm_wakeup_event (int ,int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
 u32 lp_status;

 pm_wakeup_event(pdata->input->dev.parent, 0);

 regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
 if (lp_status & SNVS_LPSR_SPO)
  mod_timer(&pdata->check_timer, jiffies + msecs_to_jiffies(DEBOUNCE_TIME));


 regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);

 return IRQ_HANDLED;
}
