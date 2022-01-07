
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_th_output {int dummy; } ;
struct intel_th_device {int dev; } ;
struct gth_device {scalar_t__ base; } ;


 int BIT (int) ;
 int CTS_CTL_SEQUENCER_ENABLE ;
 unsigned long CTS_TRIG_WAITLOOP_DEPTH ;
 scalar_t__ REG_CTS_CTL ;
 scalar_t__ REG_CTS_STAT ;
 int cpu_relax () ;
 int dev_dbg (int *,char*) ;
 struct gth_device* dev_get_drvdata (int *) ;
 int intel_th_gth_start (struct gth_device*,struct intel_th_output*) ;
 int intel_th_gth_stop (struct gth_device*,struct intel_th_output*,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void intel_th_gth_switch(struct intel_th_device *thdev,
    struct intel_th_output *output)
{
 struct gth_device *gth = dev_get_drvdata(&thdev->dev);
 unsigned long count;
 u32 reg;


 iowrite32(0, gth->base + REG_CTS_CTL);
 iowrite32(CTS_CTL_SEQUENCER_ENABLE, gth->base + REG_CTS_CTL);

 for (reg = 0, count = CTS_TRIG_WAITLOOP_DEPTH;
      count && !(reg & BIT(4)); count--) {
  reg = ioread32(gth->base + REG_CTS_STAT);
  cpu_relax();
 }
 if (!count)
  dev_dbg(&thdev->dev, "timeout waiting for CTS Trigger\n");


 iowrite32(0, gth->base + REG_CTS_CTL);

 intel_th_gth_stop(gth, output, 0);
 intel_th_gth_start(gth, output);
}
