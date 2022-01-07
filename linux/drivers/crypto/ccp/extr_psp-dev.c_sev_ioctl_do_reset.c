
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_issue_cmd {int error; } ;


 int EBUSY ;
 int SEV_CMD_FACTORY_RESET ;
 int SEV_STATE_INIT ;
 int SEV_STATE_WORKING ;
 int __sev_do_cmd_locked (int ,int *,int *) ;
 int __sev_platform_shutdown_locked (int *) ;
 int sev_get_platform_state (int*,int *) ;

__attribute__((used)) static int sev_ioctl_do_reset(struct sev_issue_cmd *argp)
{
 int state, rc;
 rc = sev_get_platform_state(&state, &argp->error);
 if (rc)
  return rc;

 if (state == SEV_STATE_WORKING)
  return -EBUSY;

 if (state == SEV_STATE_INIT) {
  rc = __sev_platform_shutdown_locked(&argp->error);
  if (rc)
   return rc;
 }

 return __sev_do_cmd_locked(SEV_CMD_FACTORY_RESET, ((void*)0), &argp->error);
}
