
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_device {int dummy; } ;


 int I40IW_FW_VERSION ;
 int IB_FW_VERSION_NAME_MAX ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static void i40iw_get_dev_fw_str(struct ib_device *dev, char *str)
{
 u32 firmware_version = I40IW_FW_VERSION;

 snprintf(str, IB_FW_VERSION_NAME_MAX, "%u.%u", firmware_version,
   (firmware_version & 0x000000ff));
}
