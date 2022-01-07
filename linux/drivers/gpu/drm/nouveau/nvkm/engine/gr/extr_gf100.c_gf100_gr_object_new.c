
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * func; } ;
struct nvkm_oclass {TYPE_1__ base; int parent; } ;
struct nvkm_object {int dummy; } ;
struct gf100_gr_object {struct gf100_gr_chan* chan; struct nvkm_object object; } ;
struct gf100_gr_chan {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct gf100_gr_chan* gf100_gr_chan (int ) ;
 int gf100_gr_object_func ;
 struct gf100_gr_object* kzalloc (int,int ) ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;

__attribute__((used)) static int
gf100_gr_object_new(const struct nvkm_oclass *oclass, void *data, u32 size,
      struct nvkm_object **pobject)
{
 struct gf100_gr_chan *chan = gf100_gr_chan(oclass->parent);
 struct gf100_gr_object *object;

 if (!(object = kzalloc(sizeof(*object), GFP_KERNEL)))
  return -ENOMEM;
 *pobject = &object->object;

 nvkm_object_ctor(oclass->base.func ? oclass->base.func :
    &gf100_gr_object_func, oclass, &object->object);
 object->chan = chan;
 return 0;
}
