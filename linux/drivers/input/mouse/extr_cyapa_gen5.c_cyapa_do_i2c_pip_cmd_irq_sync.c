
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cyapa_pip_cmd_states {int cmd_issued; int cmd_ready; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;


 int EIO ;
 int ETIMEDOUT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cyapa_i2c_pip_write (struct cyapa*,int *,size_t) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int cyapa_do_i2c_pip_cmd_irq_sync(
  struct cyapa *cyapa,
  u8 *cmd, size_t cmd_len,
  unsigned long timeout)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
 int error;


 init_completion(&pip->cmd_ready);

 atomic_inc(&pip->cmd_issued);
 error = cyapa_i2c_pip_write(cyapa, cmd, cmd_len);
 if (error) {
  atomic_dec(&pip->cmd_issued);
  return (error < 0) ? error : -EIO;
 }


 timeout = wait_for_completion_timeout(&pip->cmd_ready,
    msecs_to_jiffies(timeout));
 if (timeout == 0) {
  atomic_dec(&pip->cmd_issued);
  return -ETIMEDOUT;
 }

 return 0;
}
