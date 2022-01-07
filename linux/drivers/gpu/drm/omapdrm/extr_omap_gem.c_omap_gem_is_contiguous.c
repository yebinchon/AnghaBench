
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_gem_object {int flags; TYPE_1__* sgt; } ;
struct TYPE_2__ {int nents; } ;


 int OMAP_BO_MEM_DMABUF ;
 int OMAP_BO_MEM_DMA_API ;

__attribute__((used)) static bool omap_gem_is_contiguous(struct omap_gem_object *omap_obj)
{
 if (omap_obj->flags & OMAP_BO_MEM_DMA_API)
  return 1;

 if ((omap_obj->flags & OMAP_BO_MEM_DMABUF) && omap_obj->sgt->nents == 1)
  return 1;

 return 0;
}
