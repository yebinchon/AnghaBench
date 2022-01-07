
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ims_pcu_flash_fmt {int data; int len; int addr; } ;
struct ims_pcu {int dev; int * cmd_buf; } ;


 int EINVAL ;
 size_t IMS_PCU_BL_DATA_OFFSET ;
 int IMS_PCU_CMD_RESPONSE_TIMEOUT ;
 int READ_APP ;
 int dev_err (int ,char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ get_unaligned_le32 (int *) ;
 int ims_pcu_execute_bl_command (struct ims_pcu*,int ,int *,int,int ) ;
 scalar_t__ memcmp (int ,int const*,int ) ;
 int put_unaligned_le32 (scalar_t__,int *) ;

__attribute__((used)) static int ims_pcu_verify_block(struct ims_pcu *pcu,
    u32 addr, u8 len, const u8 *data)
{
 struct ims_pcu_flash_fmt *fragment;
 int error;

 fragment = (void *)&pcu->cmd_buf[1];
 put_unaligned_le32(addr, &fragment->addr);
 fragment->len = len;

 error = ims_pcu_execute_bl_command(pcu, READ_APP, ((void*)0), 5,
     IMS_PCU_CMD_RESPONSE_TIMEOUT);
 if (error) {
  dev_err(pcu->dev,
   "Failed to retrieve block at 0x%08x, len %d, error: %d\n",
   addr, len, error);
  return error;
 }

 fragment = (void *)&pcu->cmd_buf[IMS_PCU_BL_DATA_OFFSET];
 if (get_unaligned_le32(&fragment->addr) != addr ||
     fragment->len != len) {
  dev_err(pcu->dev,
   "Wrong block when retrieving 0x%08x (0x%08x), len %d (%d)\n",
   addr, get_unaligned_le32(&fragment->addr),
   len, fragment->len);
  return -EINVAL;
 }

 if (memcmp(fragment->data, data, len)) {
  dev_err(pcu->dev,
   "Mismatch in block at 0x%08x, len %d\n",
   addr, len);
  return -EINVAL;
 }

 return 0;
}
