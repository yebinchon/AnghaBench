
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ishtp_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ CHV_DEVICE_ID ;
 int IPC_INT_FROM_ISH_TO_HOST_CHV_AB (scalar_t__) ;
 int IPC_REG_PISR_BXT ;
 int IPC_REG_PISR_CHV_AB ;
 scalar_t__ ish_reg_read (struct ishtp_device*,int ) ;
 int ish_reg_write (struct ishtp_device*,int ,scalar_t__) ;

__attribute__((used)) static bool check_generated_interrupt(struct ishtp_device *dev)
{
 bool interrupt_generated = 1;
 uint32_t pisr_val = 0;

 if (dev->pdev->device == CHV_DEVICE_ID) {
  pisr_val = ish_reg_read(dev, IPC_REG_PISR_CHV_AB);
  interrupt_generated =
   IPC_INT_FROM_ISH_TO_HOST_CHV_AB(pisr_val);
 } else {
  pisr_val = ish_reg_read(dev, IPC_REG_PISR_BXT);
  interrupt_generated = !!pisr_val;

  if (pisr_val)
   ish_reg_write(dev, IPC_REG_PISR_BXT, pisr_val);
 }

 return interrupt_generated;
}
