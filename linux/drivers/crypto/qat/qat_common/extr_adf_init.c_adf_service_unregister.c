
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_hndl {scalar_t__* start_status; scalar_t__* init_status; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EFAULT ;
 int adf_service_remove (struct service_hndl*) ;
 int pr_err (char*) ;

int adf_service_unregister(struct service_hndl *service)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(service->init_status); i++) {
  if (service->init_status[i] || service->start_status[i]) {
   pr_err("QAT: Could not remove active service\n");
   return -EFAULT;
  }
 }
 adf_service_remove(service);
 return 0;
}
