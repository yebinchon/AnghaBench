
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;


 int IPC_IS_BUSY (int ) ;
 int IPC_REG_HOST2ISH_DRBL ;
 int ish_reg_read (struct ishtp_device*,int ) ;

__attribute__((used)) static bool ish_is_input_ready(struct ishtp_device *dev)
{
 uint32_t doorbell_val;

 doorbell_val = ish_reg_read(dev, IPC_REG_HOST2ISH_DRBL);
 return !IPC_IS_BUSY(doorbell_val);
}
