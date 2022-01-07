
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_device {int comps_used; int * pd; struct iser_comp* comps; int event_handler; } ;
struct iser_comp {int * cq; } ;


 int ib_dealloc_pd (int *) ;
 int ib_free_cq (int *) ;
 int ib_unregister_event_handler (int *) ;
 int kfree (struct iser_comp*) ;

__attribute__((used)) static void iser_free_device_ib_res(struct iser_device *device)
{
 int i;

 for (i = 0; i < device->comps_used; i++) {
  struct iser_comp *comp = &device->comps[i];

  ib_free_cq(comp->cq);
  comp->cq = ((void*)0);
 }

 ib_unregister_event_handler(&device->event_handler);
 ib_dealloc_pd(device->pd);

 kfree(device->comps);
 device->comps = ((void*)0);
 device->pd = ((void*)0);
}
