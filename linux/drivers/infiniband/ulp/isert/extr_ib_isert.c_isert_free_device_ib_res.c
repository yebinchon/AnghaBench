
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_device {int pd; } ;


 int ib_dealloc_pd (int ) ;
 int isert_free_comps (struct isert_device*) ;
 int isert_info (char*,struct isert_device*) ;

__attribute__((used)) static void
isert_free_device_ib_res(struct isert_device *device)
{
 isert_info("device %p\n", device);

 ib_dealloc_pd(device->pd);
 isert_free_comps(device);
}
