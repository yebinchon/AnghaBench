
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimd_driver_data {int timing_base; } ;
struct fimd_context {int triggering; int irq_flags; void* regs; struct fimd_driver_data* driver_data; } ;
struct device {int dummy; } ;


 int SWTRGCMD_ENABLE ;
 int TRGMODE_ENABLE ;
 int TRIGCON ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 struct fimd_context* dev_get_drvdata (struct device*) ;
 int readl (void*) ;
 int test_bit (int ,int *) ;
 int writel (int,void*) ;

__attribute__((used)) static void fimd_trigger(struct device *dev)
{
 struct fimd_context *ctx = dev_get_drvdata(dev);
 const struct fimd_driver_data *driver_data = ctx->driver_data;
 void *timing_base = ctx->regs + driver_data->timing_base;
 u32 reg;





 if (atomic_read(&ctx->triggering))
  return;


 atomic_set(&ctx->triggering, 1);

 reg = readl(timing_base + TRIGCON);
 reg |= (TRGMODE_ENABLE | SWTRGCMD_ENABLE);
 writel(reg, timing_base + TRIGCON);





 if (!test_bit(0, &ctx->irq_flags))
  atomic_set(&ctx->triggering, 0);
}
