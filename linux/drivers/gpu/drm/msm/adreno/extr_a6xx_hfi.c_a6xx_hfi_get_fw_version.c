
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_hfi_msg_fw_version {int supported_version; int member_0; } ;
struct a6xx_gmu {int dummy; } ;
typedef int msg ;


 int HFI_H2F_MSG_FW_VERSION ;
 int a6xx_hfi_send_msg (struct a6xx_gmu*,int ,struct a6xx_hfi_msg_fw_version*,int,int *,int) ;

__attribute__((used)) static int a6xx_hfi_get_fw_version(struct a6xx_gmu *gmu, u32 *version)
{
 struct a6xx_hfi_msg_fw_version msg = { 0 };


 msg.supported_version = (1 << 28) | (1 << 16);

 return a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_FW_VERSION, &msg, sizeof(msg),
  version, sizeof(*version));
}
