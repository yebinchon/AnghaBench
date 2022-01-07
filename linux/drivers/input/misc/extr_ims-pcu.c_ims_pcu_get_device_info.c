
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int* cmd_buf; int reset_reason; int bl_version; int fw_version; int serial_number; int date_of_manufacturing; int part_number; int dev; } ;


 int GET_BL_VERSION ;
 int GET_FW_VERSION ;
 size_t IMS_PCU_DATA_OFFSET ;
 int RESET_REASON ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int ims_pcu_execute_query (struct ims_pcu*,int ) ;
 int ims_pcu_get_info (struct ims_pcu*) ;
 int snprintf (int ,int,char*,int,...) ;

__attribute__((used)) static int ims_pcu_get_device_info(struct ims_pcu *pcu)
{
 int error;

 error = ims_pcu_get_info(pcu);
 if (error)
  return error;

 error = ims_pcu_execute_query(pcu, GET_FW_VERSION);
 if (error) {
  dev_err(pcu->dev,
   "GET_FW_VERSION command failed, error: %d\n", error);
  return error;
 }

 snprintf(pcu->fw_version, sizeof(pcu->fw_version),
   "%02d%02d%02d%02d.%c%c",
   pcu->cmd_buf[2], pcu->cmd_buf[3], pcu->cmd_buf[4], pcu->cmd_buf[5],
   pcu->cmd_buf[6], pcu->cmd_buf[7]);

 error = ims_pcu_execute_query(pcu, GET_BL_VERSION);
 if (error) {
  dev_err(pcu->dev,
   "GET_BL_VERSION command failed, error: %d\n", error);
  return error;
 }

 snprintf(pcu->bl_version, sizeof(pcu->bl_version),
   "%02d%02d%02d%02d.%c%c",
   pcu->cmd_buf[2], pcu->cmd_buf[3], pcu->cmd_buf[4], pcu->cmd_buf[5],
   pcu->cmd_buf[6], pcu->cmd_buf[7]);

 error = ims_pcu_execute_query(pcu, RESET_REASON);
 if (error) {
  dev_err(pcu->dev,
   "RESET_REASON command failed, error: %d\n", error);
  return error;
 }

 snprintf(pcu->reset_reason, sizeof(pcu->reset_reason),
   "%02x", pcu->cmd_buf[IMS_PCU_DATA_OFFSET]);

 dev_dbg(pcu->dev,
  "P/N: %s, MD: %s, S/N: %s, FW: %s, BL: %s, RR: %s\n",
  pcu->part_number,
  pcu->date_of_manufacturing,
  pcu->serial_number,
  pcu->fw_version,
  pcu->bl_version,
  pcu->reset_reason);

 return 0;
}
