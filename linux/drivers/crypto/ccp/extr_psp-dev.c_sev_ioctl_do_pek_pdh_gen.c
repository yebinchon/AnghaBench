
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sev_issue_cmd {int error; } ;
struct TYPE_2__ {scalar_t__ sev_state; } ;


 scalar_t__ SEV_STATE_UNINIT ;
 int __sev_do_cmd_locked (int,int *,int *) ;
 int __sev_platform_init_locked (int *) ;
 TYPE_1__* psp_master ;

__attribute__((used)) static int sev_ioctl_do_pek_pdh_gen(int cmd, struct sev_issue_cmd *argp)
{
 int rc;

 if (psp_master->sev_state == SEV_STATE_UNINIT) {
  rc = __sev_platform_init_locked(&argp->error);
  if (rc)
   return rc;
 }

 return __sev_do_cmd_locked(cmd, ((void*)0), &argp->error);
}
