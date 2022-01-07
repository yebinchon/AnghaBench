
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct ras_manager {scalar_t__ use; TYPE_1__ head; int node; } ;


 int DRM_ERROR (char*,int ) ;
 int list_del (int *) ;

__attribute__((used)) static inline void put_obj(struct ras_manager *obj)
{
 if (obj && --obj->use == 0)
  list_del(&obj->node);
 if (obj && obj->use < 0) {
   DRM_ERROR("RAS ERROR: Unbalance obj(%s) use\n", obj->head.name);
 }
}
