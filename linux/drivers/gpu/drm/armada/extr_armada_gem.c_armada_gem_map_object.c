
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct armada_gem_object {void* addr; TYPE_1__ obj; int phys_addr; scalar_t__ linear; } ;


 void* ioremap_wc (int ,int ) ;

void *
armada_gem_map_object(struct drm_device *dev, struct armada_gem_object *dobj)
{

 if (!dobj->addr && dobj->linear)
  dobj->addr = ioremap_wc(dobj->phys_addr, dobj->obj.size);
 return dobj->addr;
}
