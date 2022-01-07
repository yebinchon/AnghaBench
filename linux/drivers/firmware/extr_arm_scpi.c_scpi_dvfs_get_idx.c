
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int dvfs_idx ;
typedef int domain ;


 int CMD_GET_DVFS ;
 int scpi_send_message (int ,int*,int,int*,int) ;

__attribute__((used)) static int scpi_dvfs_get_idx(u8 domain)
{
 int ret;
 u8 dvfs_idx;

 ret = scpi_send_message(CMD_GET_DVFS, &domain, sizeof(domain),
    &dvfs_idx, sizeof(dvfs_idx));

 return ret ? ret : dvfs_idx;
}
