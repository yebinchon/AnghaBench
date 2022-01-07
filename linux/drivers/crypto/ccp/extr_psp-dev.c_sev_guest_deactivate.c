
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_data_deactivate {int dummy; } ;


 int SEV_CMD_DEACTIVATE ;
 int sev_do_cmd (int ,struct sev_data_deactivate*,int*) ;

int sev_guest_deactivate(struct sev_data_deactivate *data, int *error)
{
 return sev_do_cmd(SEV_CMD_DEACTIVATE, data, error);
}
