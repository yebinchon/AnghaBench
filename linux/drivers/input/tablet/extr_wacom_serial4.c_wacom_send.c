
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct serio {int dummy; } ;


 int serio_write (struct serio*,scalar_t__ const) ;

__attribute__((used)) static int wacom_send(struct serio *serio, const u8 *command)
{
 int err = 0;

 for (; !err && *command; command++)
  err = serio_write(serio, *command);

 return err;
}
