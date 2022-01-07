
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {TYPE_1__* client; int node; } ;
struct TYPE_2__ {int objroot; } ;


 int RB_EMPTY_NODE (int *) ;
 int rb_erase (int *,int *) ;

void
nvkm_object_remove(struct nvkm_object *object)
{
 if (!RB_EMPTY_NODE(&object->node))
  rb_erase(&object->node, &object->client->objroot);
}
