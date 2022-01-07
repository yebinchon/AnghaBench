
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int dummy; } ;


 int IPC_DRBL_BUSY_BIT ;
 int IPC_REG_HOST2ISH_DRBL ;
 int IPC_REG_ISH_HOST_FWSTS ;
 int IPC_REG_ISH_RMP2 ;
 int IPC_RMP2_DMA_ENABLED ;
 int ish_reg_read (struct ishtp_device*,int ) ;
 int ish_reg_write (struct ishtp_device*,int ,int ) ;

__attribute__((used)) static void ish_wakeup(struct ishtp_device *dev)
{

 ish_reg_write(dev, IPC_REG_ISH_RMP2, IPC_RMP2_DMA_ENABLED);





 ish_reg_write(dev, IPC_REG_HOST2ISH_DRBL, IPC_DRBL_BUSY_BIT);


 ish_reg_read(dev, IPC_REG_ISH_HOST_FWSTS);
}
