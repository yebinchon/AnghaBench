
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;


 int IPC_REG_ISH_HOST_FWSTS ;
 int ish_reg_read (struct ishtp_device*,int ) ;

__attribute__((used)) static inline uint32_t _ish_read_fw_sts_reg(struct ishtp_device *dev)
{
 return ish_reg_read(dev, IPC_REG_ISH_HOST_FWSTS);
}
