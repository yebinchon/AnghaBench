
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_irq_syscfg {int config; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int ST_A9_FIQ_N_SEL (int,int) ;
 int ST_A9_IRQ_EN_CTI_0 ;
 int ST_A9_IRQ_EN_CTI_1 ;
 int ST_A9_IRQ_EN_EXT_0 ;
 int ST_A9_IRQ_EN_EXT_1 ;
 int ST_A9_IRQ_EN_EXT_2 ;
 int ST_A9_IRQ_EN_PL310_L2 ;
 int ST_A9_IRQ_EN_PMU_0 ;
 int ST_A9_IRQ_EN_PMU_1 ;
 int ST_A9_IRQ_N_SEL (int,int) ;
 int dev_err (int *,char*,int) ;
 struct st_irq_syscfg* dev_get_drvdata (int *) ;

__attribute__((used)) static int st_irq_xlate(struct platform_device *pdev,
   int device, int channel, bool irq)
{
 struct st_irq_syscfg *ddata = dev_get_drvdata(&pdev->dev);


 switch (device) {
 case 133:
  ddata->config |= ST_A9_IRQ_EN_EXT_0;
  break;
 case 132:
  ddata->config |= ST_A9_IRQ_EN_EXT_1;
  break;
 case 131:
  ddata->config |= ST_A9_IRQ_EN_EXT_2;
  break;
 case 136:
  ddata->config |= ST_A9_IRQ_EN_CTI_0;
  break;
 case 135:
  ddata->config |= ST_A9_IRQ_EN_CTI_1;
  break;
 case 130:
  ddata->config |= ST_A9_IRQ_EN_PMU_0;
  break;
 case 129:
  ddata->config |= ST_A9_IRQ_EN_PMU_1;
  break;
 case 128:
  ddata->config |= ST_A9_IRQ_EN_PL310_L2;
  break;
 case 134:
  return 0;
 default:
  dev_err(&pdev->dev, "Unrecognised device %d\n", device);
  return -EINVAL;
 }


 ddata->config |= irq ?
  ST_A9_IRQ_N_SEL(device, channel) :
  ST_A9_FIQ_N_SEL(device, channel);

 return 0;
}
