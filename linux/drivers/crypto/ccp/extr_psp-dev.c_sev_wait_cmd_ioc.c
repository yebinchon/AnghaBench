
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_device {TYPE_1__* vdata; scalar_t__ io_regs; int sev_int_rcvd; int sev_int_queue; } ;
struct TYPE_2__ {scalar_t__ cmdresp_reg; } ;


 int ETIMEDOUT ;
 unsigned int HZ ;
 unsigned int ioread32 (scalar_t__) ;
 int wait_event_timeout (int ,int ,unsigned int) ;

__attribute__((used)) static int sev_wait_cmd_ioc(struct psp_device *psp,
       unsigned int *reg, unsigned int timeout)
{
 int ret;

 ret = wait_event_timeout(psp->sev_int_queue,
   psp->sev_int_rcvd, timeout * HZ);
 if (!ret)
  return -ETIMEDOUT;

 *reg = ioread32(psp->io_regs + psp->vdata->cmdresp_reg);

 return 0;
}
