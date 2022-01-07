
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct caam_drv_private_jr {TYPE_1__* rregs; int ridx; } ;
struct TYPE_2__ {int rconfig_lo; int jrcommand; int jrintstatus; } ;


 int EIO ;
 int JRCFG_IMSK ;
 int JRCR_RESET ;
 int JRINT_ERR_HALT_COMPLETE ;
 int JRINT_ERR_HALT_INPROGRESS ;
 int JRINT_ERR_HALT_MASK ;
 int clrsetbits_32 (int *,int ,int ) ;
 int cpu_relax () ;
 int dev_err (struct device*,char*,int ) ;
 struct caam_drv_private_jr* dev_get_drvdata (struct device*) ;
 int rd_reg32 (int *) ;
 int wr_reg32 (int *,int) ;

__attribute__((used)) static int caam_reset_hw_jr(struct device *dev)
{
 struct caam_drv_private_jr *jrp = dev_get_drvdata(dev);
 unsigned int timeout = 100000;





 clrsetbits_32(&jrp->rregs->rconfig_lo, 0, JRCFG_IMSK);


 wr_reg32(&jrp->rregs->jrcommand, JRCR_RESET);
 while (((rd_reg32(&jrp->rregs->jrintstatus) & JRINT_ERR_HALT_MASK) ==
  JRINT_ERR_HALT_INPROGRESS) && --timeout)
  cpu_relax();

 if ((rd_reg32(&jrp->rregs->jrintstatus) & JRINT_ERR_HALT_MASK) !=
     JRINT_ERR_HALT_COMPLETE || timeout == 0) {
  dev_err(dev, "failed to flush job ring %d\n", jrp->ridx);
  return -EIO;
 }


 timeout = 100000;
 wr_reg32(&jrp->rregs->jrcommand, JRCR_RESET);
 while ((rd_reg32(&jrp->rregs->jrcommand) & JRCR_RESET) && --timeout)
  cpu_relax();

 if (timeout == 0) {
  dev_err(dev, "failed to reset job ring %d\n", jrp->ridx);
  return -EIO;
 }


 clrsetbits_32(&jrp->rregs->rconfig_lo, JRCFG_IMSK, 0);

 return 0;
}
