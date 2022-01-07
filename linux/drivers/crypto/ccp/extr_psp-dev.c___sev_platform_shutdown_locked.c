
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int sev_state; } ;


 int SEV_CMD_SHUTDOWN ;
 int SEV_STATE_UNINIT ;
 int __sev_do_cmd_locked (int ,int *,int*) ;
 int dev_dbg (int ,char*) ;
 TYPE_1__* psp_master ;

__attribute__((used)) static int __sev_platform_shutdown_locked(int *error)
{
 int ret;

 ret = __sev_do_cmd_locked(SEV_CMD_SHUTDOWN, ((void*)0), error);
 if (ret)
  return ret;

 psp_master->sev_state = SEV_STATE_UNINIT;
 dev_dbg(psp_master->dev, "SEV firmware shutdown\n");

 return ret;
}
