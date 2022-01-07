
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wacom {int result; scalar_t__ expect; int cmd_done; } ;
struct serio {int dummy; } ;


 int HZ ;
 int init_completion (int *) ;
 int wacom_handle_response (struct wacom*) ;
 int wacom_send (struct serio*,scalar_t__ const*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wacom_send_and_wait(struct wacom *wacom, struct serio *serio,
          const u8 *cmd, const char *desc)
{
 int err;
 unsigned long u;

 wacom->expect = cmd[1];
 init_completion(&wacom->cmd_done);

 err = wacom_send(serio, cmd);
 if (err)
  return err;

 u = wait_for_completion_timeout(&wacom->cmd_done, HZ);
 if (u == 0) {

  wacom_handle_response(wacom);
 }

 wacom->expect = 0;
 return wacom->result;
}
