
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyapa_pip_cmd_states {int pm_stage_lock; int pm_stage; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;


 int CYAPA_PM_DEACTIVE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cyapa_reset_pip_pm_state(struct cyapa *cyapa)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;


 mutex_lock(&pip->pm_stage_lock);
 pip->pm_stage = CYAPA_PM_DEACTIVE;
 mutex_unlock(&pip->pm_stage_lock);
}
