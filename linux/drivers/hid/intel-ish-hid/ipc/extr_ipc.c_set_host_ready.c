
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ishtp_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; int revision; } ;


 scalar_t__ CHV_DEVICE_ID ;
 int IPC_HOST2ISH_BUSYCLEAR_MASK_BIT ;
 int IPC_HOSTCOMM_INT_EN_BIT_CHV_AB ;
 int IPC_PIMR_INT_EN_BIT_BXT ;
 int IPC_REG_HOST_COMM ;
 int IPC_REG_PIMR_BXT ;
 int REVISION_ID_CHT_A0 ;
 int REVISION_ID_CHT_Ax_SI ;
 int REVISION_ID_CHT_B0 ;
 int REVISION_ID_CHT_Bx_SI ;
 int REVISION_ID_CHT_Dx_SI ;
 int REVISION_ID_CHT_Kx_SI ;
 int REVISION_ID_SI_MASK ;
 int ish_reg_read (struct ishtp_device*,int ) ;
 int ish_reg_write (struct ishtp_device*,int ,int) ;

__attribute__((used)) static void set_host_ready(struct ishtp_device *dev)
{
 if (dev->pdev->device == CHV_DEVICE_ID) {
  if (dev->pdev->revision == REVISION_ID_CHT_A0 ||
    (dev->pdev->revision & REVISION_ID_SI_MASK) ==
    REVISION_ID_CHT_Ax_SI)
   ish_reg_write(dev, IPC_REG_HOST_COMM, 0x81);
  else if (dev->pdev->revision == REVISION_ID_CHT_B0 ||
    (dev->pdev->revision & REVISION_ID_SI_MASK) ==
    REVISION_ID_CHT_Bx_SI ||
    (dev->pdev->revision & REVISION_ID_SI_MASK) ==
    REVISION_ID_CHT_Kx_SI ||
    (dev->pdev->revision & REVISION_ID_SI_MASK) ==
    REVISION_ID_CHT_Dx_SI) {
   uint32_t host_comm_val;

   host_comm_val = ish_reg_read(dev, IPC_REG_HOST_COMM);
   host_comm_val |= IPC_HOSTCOMM_INT_EN_BIT_CHV_AB | 0x81;
   ish_reg_write(dev, IPC_REG_HOST_COMM, host_comm_val);
  }
 } else {
   uint32_t host_pimr_val;

   host_pimr_val = ish_reg_read(dev, IPC_REG_PIMR_BXT);
   host_pimr_val |= IPC_PIMR_INT_EN_BIT_BXT;




   host_pimr_val &= ~IPC_HOST2ISH_BUSYCLEAR_MASK_BIT;

   ish_reg_write(dev, IPC_REG_PIMR_BXT, host_pimr_val);
 }
}
