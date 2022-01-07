
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_irq_device {int dev; int devctrl_offset; int devctrl_regs; } ;


 int dev_dbg (int ,char*,int) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static inline u32 keystone_irq_readl(struct keystone_irq_device *kirq)
{
 int ret;
 u32 val = 0;

 ret = regmap_read(kirq->devctrl_regs, kirq->devctrl_offset, &val);
 if (ret < 0)
  dev_dbg(kirq->dev, "irq read failed ret(%d)\n", ret);
 return val;
}
