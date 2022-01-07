
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct TYPE_3__ {TYPE_2__ status_cmd_buf; } ;


 int SEV_CMD_PLATFORM_STATUS ;
 int __sev_do_cmd_locked (int ,TYPE_2__*,int*) ;
 TYPE_1__* psp_master ;

__attribute__((used)) static int sev_get_platform_state(int *state, int *error)
{
 int rc;

 rc = __sev_do_cmd_locked(SEV_CMD_PLATFORM_STATUS,
     &psp_master->status_cmd_buf, error);
 if (rc)
  return rc;

 *state = psp_master->status_cmd_buf.state;
 return rc;
}
