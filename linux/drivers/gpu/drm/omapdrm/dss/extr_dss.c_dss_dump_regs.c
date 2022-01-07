
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct dss_device* private; } ;
struct dss_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int* outputs; } ;


 int DSS_CONTROL ;
 int DSS_PLL_CONTROL ;
 int DSS_REVISION ;
 int DSS_SDI_CONTROL ;
 int DSS_SDI_STATUS ;
 int DSS_SYSCONFIG ;
 int DSS_SYSSTATUS ;
 int DUMPREG (struct dss_device*,int ) ;
 size_t OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_OUTPUT_SDI ;
 scalar_t__ dss_runtime_get (struct dss_device*) ;
 int dss_runtime_put (struct dss_device*) ;

__attribute__((used)) static int dss_dump_regs(struct seq_file *s, void *p)
{
 struct dss_device *dss = s->private;



 if (dss_runtime_get(dss))
  return 0;

 seq_printf(s, "%-35s %08x\n", "DSS_REVISION", dss_read_reg(dss, DSS_REVISION));
 seq_printf(s, "%-35s %08x\n", "DSS_SYSCONFIG", dss_read_reg(dss, DSS_SYSCONFIG));
 seq_printf(s, "%-35s %08x\n", "DSS_SYSSTATUS", dss_read_reg(dss, DSS_SYSSTATUS));
 seq_printf(s, "%-35s %08x\n", "DSS_CONTROL", dss_read_reg(dss, DSS_CONTROL));

 if (dss->feat->outputs[OMAP_DSS_CHANNEL_LCD] & OMAP_DSS_OUTPUT_SDI) {
  seq_printf(s, "%-35s %08x\n", "DSS_SDI_CONTROL", dss_read_reg(dss, DSS_SDI_CONTROL));
  seq_printf(s, "%-35s %08x\n", "DSS_PLL_CONTROL", dss_read_reg(dss, DSS_PLL_CONTROL));
  seq_printf(s, "%-35s %08x\n", "DSS_SDI_STATUS", dss_read_reg(dss, DSS_SDI_STATUS));
 }

 dss_runtime_put(dss);

 return 0;
}
