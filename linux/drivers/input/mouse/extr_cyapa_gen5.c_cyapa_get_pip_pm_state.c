
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyapa_pip_cmd_states {int pm_stage; int pm_stage_lock; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {TYPE_1__ cmd_states; } ;
typedef enum cyapa_pm_stage { ____Placeholder_cyapa_pm_stage } cyapa_pm_stage ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum cyapa_pm_stage cyapa_get_pip_pm_state(struct cyapa *cyapa)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;
 enum cyapa_pm_stage pm_stage;

 mutex_lock(&pip->pm_stage_lock);
 pm_stage = pip->pm_stage;
 mutex_unlock(&pip->pm_stage_lock);

 return pm_stage;
}
