
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyapa_pip_cmd_states {int is_irq_mode; int* resp_len; int cmd_ready; int cmd_issued; int irq_cmd_buf; scalar_t__ resp_data; scalar_t__ (* resp_sort_func ) (struct cyapa*,int ,int) ;} ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;


 int PIP_RESP_LENGTH_SIZE ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 int cyapa_empty_pip_output_data (struct cyapa*,scalar_t__,int*,scalar_t__ (*) (struct cyapa*,int ,int)) ;
 int cyapa_i2c_pip_read (struct cyapa*,int ,int) ;
 int get_unaligned_le16 (int ) ;
 int memcpy (scalar_t__,int ,int) ;
 scalar_t__ stub1 (struct cyapa*,int ,int) ;

bool cyapa_pip_irq_cmd_handler(struct cyapa *cyapa)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
 int length;

 if (atomic_read(&pip->cmd_issued)) {

  if (pip->is_irq_mode == 0)
   return 0;






  cyapa_i2c_pip_read(cyapa, pip->irq_cmd_buf,
   PIP_RESP_LENGTH_SIZE);
  length = get_unaligned_le16(pip->irq_cmd_buf);
  length = (length <= PIP_RESP_LENGTH_SIZE) ?
    PIP_RESP_LENGTH_SIZE : length;
  if (length > PIP_RESP_LENGTH_SIZE)
   cyapa_i2c_pip_read(cyapa,
    pip->irq_cmd_buf, length);
  if (!(pip->resp_sort_func &&
   pip->resp_sort_func(cyapa,
    pip->irq_cmd_buf, length))) {
   length = 0;
   if (pip->resp_len)
    length = *pip->resp_len;
   cyapa_empty_pip_output_data(cyapa,
     pip->resp_data,
     &length,
     pip->resp_sort_func);
   if (pip->resp_len && length != 0) {
    *pip->resp_len = length;
    atomic_dec(&pip->cmd_issued);
    complete(&pip->cmd_ready);
   }
   return 0;
  }

  if (pip->resp_data && pip->resp_len) {
   *pip->resp_len = (*pip->resp_len < length) ?
    *pip->resp_len : length;
   memcpy(pip->resp_data, pip->irq_cmd_buf,
    *pip->resp_len);
  }
  atomic_dec(&pip->cmd_issued);
  complete(&pip->cmd_ready);
  return 0;
 }

 return 1;
}
