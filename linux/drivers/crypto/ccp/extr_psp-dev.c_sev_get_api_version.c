
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sev_user_data_status {int state; int build; int api_minor; int api_major; } ;
struct TYPE_2__ {int sev_state; int build; int api_minor; int api_major; int dev; struct sev_user_data_status status_cmd_buf; } ;


 int dev_err (int ,char*,int) ;
 TYPE_1__* psp_master ;
 int sev_platform_status (struct sev_user_data_status*,int*) ;

__attribute__((used)) static int sev_get_api_version(void)
{
 struct sev_user_data_status *status;
 int error = 0, ret;

 status = &psp_master->status_cmd_buf;
 ret = sev_platform_status(status, &error);
 if (ret) {
  dev_err(psp_master->dev,
   "SEV: failed to get status. Error: %#x\n", error);
  return 1;
 }

 psp_master->api_major = status->api_major;
 psp_master->api_minor = status->api_minor;
 psp_master->build = status->build;
 psp_master->sev_state = status->state;

 return 0;
}
