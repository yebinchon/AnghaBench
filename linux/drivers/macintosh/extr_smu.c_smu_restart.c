
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_simple_cmd {int dummy; } ;


 int SMU_CMD_POWER_COMMAND ;
 int * smu ;
 scalar_t__ smu_queue_simple (struct smu_simple_cmd*,int ,int,int *,int *,char,char,char,char,char,char,char,int ) ;
 int smu_spinwait_simple (struct smu_simple_cmd*) ;

void smu_restart(void)
{
 struct smu_simple_cmd cmd;

 if (smu == ((void*)0))
  return;

 if (smu_queue_simple(&cmd, SMU_CMD_POWER_COMMAND, 8, ((void*)0), ((void*)0),
        'R', 'E', 'S', 'T', 'A', 'R', 'T', 0))
  return;
 smu_spinwait_simple(&cmd);
 for (;;)
  ;
}
