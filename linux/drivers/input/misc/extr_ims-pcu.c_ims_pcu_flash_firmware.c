
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ims_pcu_flash_fmt {int data; scalar_t__ len; int addr; } ;
struct ims_pcu {int fw_start_addr; int fw_end_addr; unsigned int update_firmware_status; int dev; int * cmd_buf; } ;
struct ihex_binrec {int data; int len; int addr; } ;
struct firmware {scalar_t__ data; } ;


 int ERASE_APP ;
 int IMS_PCU_CMD_RESPONSE_TIMEOUT ;
 int PROGRAM_COMPLETE ;
 int PROGRAM_DEVICE ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,int,...) ;
 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;
 int ims_pcu_execute_bl_command (struct ims_pcu*,int ,int *,scalar_t__,int) ;
 int ims_pcu_verify_block (struct ims_pcu*,int,scalar_t__,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int put_unaligned_le32 (int,int *) ;

__attribute__((used)) static int ims_pcu_flash_firmware(struct ims_pcu *pcu,
      const struct firmware *fw,
      unsigned int n_fw_records)
{
 const struct ihex_binrec *rec = (const struct ihex_binrec *)fw->data;
 struct ims_pcu_flash_fmt *fragment;
 unsigned int count = 0;
 u32 addr;
 u8 len;
 int error;

 error = ims_pcu_execute_bl_command(pcu, ERASE_APP, ((void*)0), 0, 2000);
 if (error) {
  dev_err(pcu->dev,
   "Failed to erase application image, error: %d\n",
   error);
  return error;
 }

 while (rec) {






  addr = be32_to_cpu(rec->addr) / 2;
  len = be16_to_cpu(rec->len);

  fragment = (void *)&pcu->cmd_buf[1];
  put_unaligned_le32(addr, &fragment->addr);
  fragment->len = len;
  memcpy(fragment->data, rec->data, len);

  error = ims_pcu_execute_bl_command(pcu, PROGRAM_DEVICE,
      ((void*)0), len + 5,
      IMS_PCU_CMD_RESPONSE_TIMEOUT);
  if (error) {
   dev_err(pcu->dev,
    "Failed to write block at 0x%08x, len %d, error: %d\n",
    addr, len, error);
   return error;
  }

  if (addr >= pcu->fw_start_addr && addr < pcu->fw_end_addr) {
   error = ims_pcu_verify_block(pcu, addr, len, rec->data);
   if (error)
    return error;
  }

  count++;
  pcu->update_firmware_status = (count * 100) / n_fw_records;

  rec = ihex_next_binrec(rec);
 }

 error = ims_pcu_execute_bl_command(pcu, PROGRAM_COMPLETE,
         ((void*)0), 0, 2000);
 if (error)
  dev_err(pcu->dev,
   "Failed to send PROGRAM_COMPLETE, error: %d\n",
   error);

 return 0;
}
