
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sev_platform_shutdown_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sev_cmd_mutex ;

__attribute__((used)) static int sev_platform_shutdown(int *error)
{
 int rc;

 mutex_lock(&sev_cmd_mutex);
 rc = __sev_platform_shutdown_locked(((void*)0));
 mutex_unlock(&sev_cmd_mutex);

 return rc;
}
