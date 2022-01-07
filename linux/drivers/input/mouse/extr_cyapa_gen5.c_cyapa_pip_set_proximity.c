
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int PIP_CMD_COMPLETE_SUCCESS (int*) ;
 int PIP_SET_PROXIMITY ;
 int VALID_CMD_RESP_HEADER (int*,int) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;

int cyapa_pip_set_proximity(struct cyapa *cyapa, bool enable)
{
 u8 cmd[] = { 0x04, 0x00, 0x06, 0x00, 0x2f, 0x00, PIP_SET_PROXIMITY,
       (u8)!!enable
 };
 u8 resp_data[6];
 int resp_len;
 int error;

 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 0);
 if (error || !VALID_CMD_RESP_HEADER(resp_data, PIP_SET_PROXIMITY) ||
   !PIP_CMD_COMPLETE_SUCCESS(resp_data)) {
  error = (error == -ETIMEDOUT) ? -EOPNOTSUPP : error;
  return error < 0 ? error : -EINVAL;
 }

 return 0;
}
