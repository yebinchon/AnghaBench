
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int operational; scalar_t__ gen; int state; } ;
typedef int resp_data ;
typedef int cmd ;


 scalar_t__ CYAPA_GEN5 ;
 scalar_t__ CYAPA_GEN6 ;
 int CYAPA_STATE_GEN5_BL ;
 int CYAPA_STATE_GEN6_BL ;
 int EAGAIN ;
 int EINVAL ;
 int cyapa_empty_pip_output_data (struct cyapa*,int *,int *,int *) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_is_pip_app_mode (struct cyapa*) ;
 scalar_t__ cyapa_is_pip_bl_mode (struct cyapa*) ;
 int cyapa_poll_state (struct cyapa*,int) ;
 int cyapa_sort_pip_application_launch_data ;
 int memset (int*,int ,int) ;

int cyapa_pip_bl_enter(struct cyapa *cyapa)
{
 u8 cmd[] = { 0x04, 0x00, 0x05, 0x00, 0x2F, 0x00, 0x01 };
 u8 resp_data[2];
 int resp_len;
 int error;

 error = cyapa_poll_state(cyapa, 500);
 if (error < 0)
  return error;


 if (cyapa_is_pip_bl_mode(cyapa))
  return 0;
 else if (!cyapa_is_pip_app_mode(cyapa))
  return -EINVAL;


 cyapa_empty_pip_output_data(cyapa, ((void*)0), ((void*)0), ((void*)0));





 resp_len = sizeof(resp_data);
 memset(resp_data, 0, resp_len);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
   cmd, sizeof(cmd),
   resp_data, &resp_len,
   5000, cyapa_sort_pip_application_launch_data,
   1);
 if (error || resp_data[0] != 0x00 || resp_data[1] != 0x00)
  return error < 0 ? error : -EAGAIN;

 cyapa->operational = 0;
 if (cyapa->gen == CYAPA_GEN5)
  cyapa->state = CYAPA_STATE_GEN5_BL;
 else if (cyapa->gen == CYAPA_GEN6)
  cyapa->state = CYAPA_STATE_GEN6_BL;
 return 0;
}
