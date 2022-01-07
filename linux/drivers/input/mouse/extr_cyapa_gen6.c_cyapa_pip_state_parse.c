
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pip_fixed_info {int family_id; int silicon_id_high; } ;
struct cyapa {int state; int gen; } ;
typedef int cmd ;


 int CYAPA_GEN5 ;
 int CYAPA_GEN6 ;
 int CYAPA_STATE_GEN5_APP ;
 int CYAPA_STATE_GEN5_BL ;
 int CYAPA_STATE_GEN6_APP ;
 int CYAPA_STATE_GEN6_BL ;
 int CYAPA_STATE_NO_DEVICE ;
 int EAGAIN ;
 int PIP_DEEP_SLEEP_STATE_ON ;
 int PIP_HID_APP_REPORT_ID ;
 int PIP_HID_BL_REPORT_ID ;
 int PIP_HID_DESCRIPTOR_SIZE ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 int cyapa_empty_pip_output_data (struct cyapa*,int *,int *,int *) ;
 int cyapa_get_pip_fixed_info (struct cyapa*,struct pip_fixed_info*,int) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_pip_deep_sleep (struct cyapa*,int ) ;
 int cyapa_sort_pip_hid_descriptor_data ;
 int memset (struct pip_fixed_info*,int ,int) ;

int cyapa_pip_state_parse(struct cyapa *cyapa, u8 *reg_data, int len)
{
 u8 cmd[] = { 0x01, 0x00};
 struct pip_fixed_info pip_info;
 u8 resp_data[PIP_HID_DESCRIPTOR_SIZE];
 int resp_len;
 bool is_bootloader;
 int error;

 cyapa->state = CYAPA_STATE_NO_DEVICE;


 cyapa_pip_deep_sleep(cyapa, PIP_DEEP_SLEEP_STATE_ON);


 cyapa_empty_pip_output_data(cyapa, ((void*)0), ((void*)0), ((void*)0));





 resp_len = PIP_HID_DESCRIPTOR_SIZE;
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
   cmd, sizeof(cmd),
   resp_data, &resp_len,
   300,
   cyapa_sort_pip_hid_descriptor_data,
   0);
 if (error)
  return error;

 if (resp_data[PIP_RESP_REPORT_ID_OFFSET] == PIP_HID_BL_REPORT_ID)
  is_bootloader = 1;
 else if (resp_data[PIP_RESP_REPORT_ID_OFFSET] == PIP_HID_APP_REPORT_ID)
  is_bootloader = 0;
 else
  return -EAGAIN;


 memset(&pip_info, 0, sizeof(struct pip_fixed_info));
 error = cyapa_get_pip_fixed_info(cyapa, &pip_info, is_bootloader);
 if (error)
  return error;

 if (pip_info.family_id == 0x9B && pip_info.silicon_id_high == 0x0B) {
  cyapa->gen = CYAPA_GEN6;
  cyapa->state = is_bootloader ? CYAPA_STATE_GEN6_BL
          : CYAPA_STATE_GEN6_APP;
 } else if (pip_info.family_id == 0x91 &&
     pip_info.silicon_id_high == 0x02) {
  cyapa->gen = CYAPA_GEN5;
  cyapa->state = is_bootloader ? CYAPA_STATE_GEN5_BL
          : CYAPA_STATE_GEN5_APP;
 }

 return 0;
}
