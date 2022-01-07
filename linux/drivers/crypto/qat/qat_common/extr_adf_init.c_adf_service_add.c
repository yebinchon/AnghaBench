
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_hndl {int list; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int service_lock ;
 int service_table ;

__attribute__((used)) static void adf_service_add(struct service_hndl *service)
{
 mutex_lock(&service_lock);
 list_add(&service->list, &service_table);
 mutex_unlock(&service_lock);
}
