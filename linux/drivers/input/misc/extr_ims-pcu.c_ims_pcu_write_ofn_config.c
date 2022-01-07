
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ims_pcu {scalar_t__ cmd_buf; } ;
typedef scalar_t__ s16 ;
typedef int buffer ;


 int EIO ;
 scalar_t__ OFN_REG_RESULT_OFFSET ;
 int OFN_SET_CONFIG ;
 scalar_t__ get_unaligned_le16 (scalar_t__) ;
 int ims_pcu_execute_command (struct ims_pcu*,int ,int **,int) ;

__attribute__((used)) static int ims_pcu_write_ofn_config(struct ims_pcu *pcu, u8 addr, u8 data)
{
 u8 buffer[] = { addr, data };
 int error;
 s16 result;

 error = ims_pcu_execute_command(pcu, OFN_SET_CONFIG,
     &buffer, sizeof(buffer));
 if (error)
  return error;

 result = (s16)get_unaligned_le16(pcu->cmd_buf + OFN_REG_RESULT_OFFSET);
 if (result < 0)
  return -EIO;

 return 0;
}
