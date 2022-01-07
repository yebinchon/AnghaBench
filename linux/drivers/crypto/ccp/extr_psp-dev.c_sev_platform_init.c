
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sev_platform_init_locked (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sev_cmd_mutex ;

int sev_platform_init(int *error)
{
 int rc;

 mutex_lock(&sev_cmd_mutex);
 rc = __sev_platform_init_locked(error);
 mutex_unlock(&sev_cmd_mutex);

 return rc;
}
