
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oclass; } ;
struct nvkm_oclass {int object; int token; int route; int handle; TYPE_1__ base; int engine; int client; } ;
struct nvkm_object_func {int dummy; } ;
struct nvkm_object {int engine; int node; int tree; int head; int object; int token; int route; int handle; int oclass; int client; struct nvkm_object_func const* func; } ;


 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (int ) ;
 int RB_CLEAR_NODE (int *) ;
 int WARN_ON (int ) ;
 int nvkm_engine_ref (int ) ;

void
nvkm_object_ctor(const struct nvkm_object_func *func,
   const struct nvkm_oclass *oclass, struct nvkm_object *object)
{
 object->func = func;
 object->client = oclass->client;
 object->engine = nvkm_engine_ref(oclass->engine);
 object->oclass = oclass->base.oclass;
 object->handle = oclass->handle;
 object->route = oclass->route;
 object->token = oclass->token;
 object->object = oclass->object;
 INIT_LIST_HEAD(&object->head);
 INIT_LIST_HEAD(&object->tree);
 RB_CLEAR_NODE(&object->node);
 WARN_ON(IS_ERR(object->engine));
}
