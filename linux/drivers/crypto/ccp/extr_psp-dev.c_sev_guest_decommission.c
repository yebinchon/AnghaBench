
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_data_decommission {int dummy; } ;


 int SEV_CMD_DECOMMISSION ;
 int sev_do_cmd (int ,struct sev_data_decommission*,int*) ;

int sev_guest_decommission(struct sev_data_decommission *data, int *error)
{
 return sev_do_cmd(SEV_CMD_DECOMMISSION, data, error);
}
