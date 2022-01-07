
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {scalar_t__ io_regs; int qim; } ;


 scalar_t__ IRQ_MASK_REG ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ccp_enable_queue_interrupts(struct ccp_device *ccp)
{
 iowrite32(ccp->qim, ccp->io_regs + IRQ_MASK_REG);
}
