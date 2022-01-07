
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEV_CMD_DF_FLUSH ;
 int sev_do_cmd (int ,int *,int*) ;

int sev_guest_df_flush(int *error)
{
 return sev_do_cmd(SEV_CMD_DF_FLUSH, ((void*)0), error);
}
