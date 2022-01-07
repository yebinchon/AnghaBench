
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int ref; int name; int link; } ;


 int DBG (char*,int ) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wf_control_release ;
 int wf_lock ;

void wf_unregister_control(struct wf_control *ct)
{
 mutex_lock(&wf_lock);
 list_del(&ct->link);
 mutex_unlock(&wf_lock);

 DBG("wf: Unregistered control %s\n", ct->name);

 kref_put(&ct->ref, wf_control_release);
}
