
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pms7003_state {int frame_ready; int serdev; } ;
typedef enum pms7003_cmd { ____Placeholder_pms7003_cmd } pms7003_cmd ;


 int EIO ;
 int ETIMEDOUT ;
 int PMS7003_CMD_LENGTH ;
 int PMS7003_TIMEOUT ;
 int * pms7003_cmd_tbl ;
 int serdev_device_write (int ,int ,int,int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int pms7003_do_cmd(struct pms7003_state *state, enum pms7003_cmd cmd)
{
 int ret;

 ret = serdev_device_write(state->serdev, pms7003_cmd_tbl[cmd],
      PMS7003_CMD_LENGTH, PMS7003_TIMEOUT);
 if (ret < PMS7003_CMD_LENGTH)
  return ret < 0 ? ret : -EIO;

 ret = wait_for_completion_interruptible_timeout(&state->frame_ready,
       PMS7003_TIMEOUT);
 if (!ret)
  ret = -ETIMEDOUT;

 return ret < 0 ? ret : 0;
}
