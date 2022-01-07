
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gen6_interval_setting {void* lp2_interval; void* lp1_interval; void* active_interval; } ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EINVAL ;
 int GEN6_GET_POWER_MODE_INTERVAL ;
 int VALID_CMD_RESP_HEADER (int*,int) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;
 void* get_unaligned_le16 (int*) ;

__attribute__((used)) static int cyapa_gen6_get_interval_setting(struct cyapa *cyapa,
  struct gen6_interval_setting *interval_setting)
{
 u8 cmd[] = { 0x04, 0x00, 0x05, 0x00, 0x2f, 0x00,
       GEN6_GET_POWER_MODE_INTERVAL };
 u8 resp_data[11];
 int resp_len;
 int error;

 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 0);
 if (error ||
  !VALID_CMD_RESP_HEADER(resp_data, GEN6_GET_POWER_MODE_INTERVAL))
  return error < 0 ? error : -EINVAL;

 interval_setting->active_interval = get_unaligned_le16(&resp_data[5]);
 interval_setting->lp1_interval = get_unaligned_le16(&resp_data[7]);
 interval_setting->lp2_interval = get_unaligned_le16(&resp_data[9]);

 return 0;
}
