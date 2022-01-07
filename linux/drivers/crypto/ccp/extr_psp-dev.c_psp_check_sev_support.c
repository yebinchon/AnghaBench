
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_device {int dev; TYPE_1__* vdata; scalar_t__ io_regs; } ;
struct TYPE_2__ {scalar_t__ feature_reg; } ;


 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static int psp_check_sev_support(struct psp_device *psp)
{

 if (!(ioread32(psp->io_regs + psp->vdata->feature_reg) & 1)) {
  dev_dbg(psp->dev, "psp does not support SEV\n");
  return -ENODEV;
 }

 return 0;
}
