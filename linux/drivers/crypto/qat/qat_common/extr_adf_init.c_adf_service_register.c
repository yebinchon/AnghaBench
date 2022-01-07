
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_hndl {int start_status; int init_status; } ;


 int adf_service_add (struct service_hndl*) ;
 int memset (int ,int ,int) ;

int adf_service_register(struct service_hndl *service)
{
 memset(service->init_status, 0, sizeof(service->init_status));
 memset(service->start_status, 0, sizeof(service->start_status));
 adf_service_add(service);
 return 0;
}
