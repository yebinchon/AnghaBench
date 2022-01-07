
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_user_data_status {int dummy; } ;


 int SEV_CMD_PLATFORM_STATUS ;
 int sev_do_cmd (int ,struct sev_user_data_status*,int*) ;

int sev_platform_status(struct sev_user_data_status *data, int *error)
{
 return sev_do_cmd(SEV_CMD_PLATFORM_STATUS, data, error);
}
