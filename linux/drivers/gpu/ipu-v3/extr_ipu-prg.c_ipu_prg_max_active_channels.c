
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipu_pre_get_available_count () ;

int ipu_prg_max_active_channels(void)
{
 return ipu_pre_get_available_count();
}
