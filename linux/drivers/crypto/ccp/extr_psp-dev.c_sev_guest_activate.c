
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_data_activate {int dummy; } ;


 int SEV_CMD_ACTIVATE ;
 int sev_do_cmd (int ,struct sev_data_activate*,int*) ;

int sev_guest_activate(struct sev_data_activate *data, int *error)
{
 return sev_do_cmd(SEV_CMD_ACTIVATE, data, error);
}
