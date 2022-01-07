
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sev_do_cmd_locked (int,void*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sev_cmd_mutex ;

__attribute__((used)) static int sev_do_cmd(int cmd, void *data, int *psp_ret)
{
 int rc;

 mutex_lock(&sev_cmd_mutex);
 rc = __sev_do_cmd_locked(cmd, data, psp_ret);
 mutex_unlock(&sev_cmd_mutex);

 return rc;
}
