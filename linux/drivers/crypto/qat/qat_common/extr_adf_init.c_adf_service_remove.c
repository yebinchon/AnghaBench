
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_hndl {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int service_lock ;

__attribute__((used)) static void adf_service_remove(struct service_hndl *service)
{
 mutex_lock(&service_lock);
 list_del(&service->list);
 mutex_unlock(&service_lock);
}
