
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;


 int IPC_REG_ISH2HOST_MSG ;
 int ish_reg_read (struct ishtp_device const*,int ) ;

__attribute__((used)) static uint32_t _ishtp_read_hdr(const struct ishtp_device *dev)
{
 return ish_reg_read(dev, IPC_REG_ISH2HOST_MSG);
}
