
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_engine {unsigned long stat_irq_thresh; scalar_t__ regs; scalar_t__ fifo_sz; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ SPA_IRQ_CTRL_REG_OFFSET ;
 int SPA_IRQ_CTRL_STAT_CNT_OFFSET ;
 unsigned long clamp (unsigned long,unsigned long,scalar_t__) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct spacc_engine* spacc_dev_to_engine (struct device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static ssize_t spacc_stat_irq_thresh_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len)
{
 struct spacc_engine *engine = spacc_dev_to_engine(dev);
 unsigned long thresh;

 if (kstrtoul(buf, 0, &thresh))
  return -EINVAL;

 thresh = clamp(thresh, 1UL, engine->fifo_sz - 1);

 engine->stat_irq_thresh = thresh;
 writel(engine->stat_irq_thresh << SPA_IRQ_CTRL_STAT_CNT_OFFSET,
        engine->regs + SPA_IRQ_CTRL_REG_OFFSET);

 return len;
}
