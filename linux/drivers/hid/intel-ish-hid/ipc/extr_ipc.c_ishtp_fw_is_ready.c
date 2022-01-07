
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;


 scalar_t__ IPC_IS_ISH_ILUP (int ) ;
 scalar_t__ IPC_IS_ISH_ISHTP_READY (int ) ;
 int _ish_read_fw_sts_reg (struct ishtp_device*) ;

__attribute__((used)) static bool ishtp_fw_is_ready(struct ishtp_device *dev)
{
 uint32_t ish_status = _ish_read_fw_sts_reg(dev);

 return IPC_IS_ISH_ILUP(ish_status) &&
  IPC_IS_ISH_ISHTP_READY(ish_status);
}
