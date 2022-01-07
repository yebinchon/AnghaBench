
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int list_empty (int *) ;
 int mc_devices ;
 int mem_ctls_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool edac_has_mcs(void)
{
 bool ret;

 mutex_lock(&mem_ctls_mutex);

 ret = list_empty(&mc_devices);

 mutex_unlock(&mem_ctls_mutex);

 return !ret;
}
