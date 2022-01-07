
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mutex {int dummy; } ;
struct ps2dev {struct mutex cmd_mutex; TYPE_1__* serio; } ;
struct TYPE_2__ {scalar_t__ ps2_cmd_mutex; } ;


 int mutex_unlock (struct mutex*) ;

void ps2_end_command(struct ps2dev *ps2dev)
{
 struct mutex *m = ps2dev->serio->ps2_cmd_mutex ?: &ps2dev->cmd_mutex;

 mutex_unlock(m);
}
