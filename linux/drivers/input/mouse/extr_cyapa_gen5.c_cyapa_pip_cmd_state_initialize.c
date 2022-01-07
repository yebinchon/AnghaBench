
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cyapa_pip_cmd_states {int * resp_len; int * resp_data; int in_progress_cmd; int * resp_sort_func; int pm_stage; int pm_stage_lock; int cmd_lock; int cmd_issued; int cmd_ready; } ;
struct TYPE_2__ {struct cyapa_pip_cmd_states pip; } ;
struct cyapa {int dev_sleep_time; int dev_pwr_mode; TYPE_1__ cmd_states; } ;


 int CYAPA_PM_DEACTIVE ;
 int PIP_INVALID_CMD ;
 int UNINIT_PWR_MODE ;
 int UNINIT_SLEEP_TIME ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;

int cyapa_pip_cmd_state_initialize(struct cyapa *cyapa)
{
 struct cyapa_pip_cmd_states *pip = &cyapa->cmd_states.pip;

 init_completion(&pip->cmd_ready);
 atomic_set(&pip->cmd_issued, 0);
 mutex_init(&pip->cmd_lock);

 mutex_init(&pip->pm_stage_lock);
 pip->pm_stage = CYAPA_PM_DEACTIVE;

 pip->resp_sort_func = ((void*)0);
 pip->in_progress_cmd = PIP_INVALID_CMD;
 pip->resp_data = ((void*)0);
 pip->resp_len = ((void*)0);

 cyapa->dev_pwr_mode = UNINIT_PWR_MODE;
 cyapa->dev_sleep_time = UNINIT_SLEEP_TIME;

 return 0;
}
