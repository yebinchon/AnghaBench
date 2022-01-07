
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int name; int link; } ;


 int DBG (char*,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wf_lock ;
 int wf_put_sensor (struct wf_sensor*) ;

void wf_unregister_sensor(struct wf_sensor *sr)
{
 mutex_lock(&wf_lock);
 list_del(&sr->link);
 mutex_unlock(&wf_lock);

 DBG("wf: Unregistered sensor %s\n", sr->name);

 wf_put_sensor(sr);
}
