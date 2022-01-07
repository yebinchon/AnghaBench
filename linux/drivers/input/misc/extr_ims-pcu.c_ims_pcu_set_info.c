
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int dev; int * cmd_buf; int serial_number; int date_of_manufacturing; int part_number; } ;


 size_t IMS_PCU_DATA_OFFSET ;
 size_t IMS_PCU_INFO_DOM_OFFSET ;
 size_t IMS_PCU_INFO_PART_OFFSET ;
 size_t IMS_PCU_INFO_SERIAL_OFFSET ;
 int IMS_PCU_SET_INFO_SIZE ;
 int SET_INFO ;
 int dev_err (int ,char*,int) ;
 int ims_pcu_execute_command (struct ims_pcu*,int ,int *,int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int ims_pcu_set_info(struct ims_pcu *pcu)
{
 int error;

 memcpy(&pcu->cmd_buf[IMS_PCU_INFO_PART_OFFSET],
        pcu->part_number, sizeof(pcu->part_number));
 memcpy(&pcu->cmd_buf[IMS_PCU_INFO_DOM_OFFSET],
        pcu->date_of_manufacturing, sizeof(pcu->date_of_manufacturing));
 memcpy(&pcu->cmd_buf[IMS_PCU_INFO_SERIAL_OFFSET],
        pcu->serial_number, sizeof(pcu->serial_number));

 error = ims_pcu_execute_command(pcu, SET_INFO,
     &pcu->cmd_buf[IMS_PCU_DATA_OFFSET],
     IMS_PCU_SET_INFO_SIZE);
 if (error) {
  dev_err(pcu->dev,
   "Failed to update device information, error: %d\n",
   error);
  return error;
 }

 return 0;
}
