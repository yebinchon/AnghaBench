
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cyapa_pip_cmd_states {int* resp_data; int* resp_len; int in_progress_cmd; int is_irq_mode; int cmd_lock; int * resp_sort_func; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;
typedef int * cb_sort ;


 int EINVAL ;
 int ETIMEDOUT ;
 int PIP_APP_CMD_REPORT_ID ;
 int PIP_BL_CMD_REPORT_ID ;
 int PIP_INVALID_CMD ;
 int PIP_MIN_APP_CMD_LENGTH ;
 int PIP_MIN_BL_CMD_LENGTH ;
 int cyapa_do_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,unsigned long) ;
 int cyapa_do_i2c_pip_cmd_polling (struct cyapa*,int*,int,int*,int*,unsigned long,int *) ;
 int cyapa_empty_pip_output_data (struct cyapa*,int*,int*,int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int cyapa_i2c_pip_cmd_irq_sync(
  struct cyapa *cyapa,
  u8 *cmd, int cmd_len,
  u8 *resp_data, int *resp_len,
  unsigned long timeout,
  cb_sort func,
  bool irq_mode)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
 int error;

 if (!cmd || !cmd_len)
  return -EINVAL;


 error = mutex_lock_interruptible(&pip->cmd_lock);
 if (error)
  return error;

 pip->resp_sort_func = func;
 pip->resp_data = resp_data;
 pip->resp_len = resp_len;

 if (cmd_len >= PIP_MIN_APP_CMD_LENGTH &&
   cmd[4] == PIP_APP_CMD_REPORT_ID) {

  pip->in_progress_cmd = cmd[6] & 0x7f;
 } else if (cmd_len >= PIP_MIN_BL_CMD_LENGTH &&
   cmd[4] == PIP_BL_CMD_REPORT_ID) {

  pip->in_progress_cmd = cmd[7];
 }


 if (irq_mode) {
  pip->is_irq_mode = 1;
  error = cyapa_do_i2c_pip_cmd_irq_sync(cyapa, cmd, cmd_len,
       timeout);
  if (error == -ETIMEDOUT && resp_data &&
    resp_len && *resp_len != 0 && func) {





   error = cyapa_empty_pip_output_data(cyapa,
     resp_data, resp_len, func);
   if (error || *resp_len == 0)
    error = error ? error : -ETIMEDOUT;
  }
 } else {
  pip->is_irq_mode = 0;
  error = cyapa_do_i2c_pip_cmd_polling(cyapa, cmd, cmd_len,
    resp_data, resp_len, timeout, func);
 }

 pip->resp_sort_func = ((void*)0);
 pip->resp_data = ((void*)0);
 pip->resp_len = ((void*)0);
 pip->in_progress_cmd = PIP_INVALID_CMD;

 mutex_unlock(&pip->cmd_lock);
 return error;
}
