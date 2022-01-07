
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_device {int comps_used; struct isert_comp* comps; } ;
struct isert_comp {scalar_t__ cq; } ;


 int ib_free_cq (scalar_t__) ;
 int kfree (struct isert_comp*) ;

__attribute__((used)) static void
isert_free_comps(struct isert_device *device)
{
 int i;

 for (i = 0; i < device->comps_used; i++) {
  struct isert_comp *comp = &device->comps[i];

  if (comp->cq)
   ib_free_cq(comp->cq);
 }
 kfree(device->comps);
}
