
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_irq_device {int dev; int devctrl_offset; int devctrl_regs; } ;


 int dev_dbg (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline void
keystone_irq_writel(struct keystone_irq_device *kirq, u32 value)
{
 int ret;

 ret = regmap_write(kirq->devctrl_regs, kirq->devctrl_offset, value);
 if (ret < 0)
  dev_dbg(kirq->dev, "irq write failed ret(%d)\n", ret);
}
