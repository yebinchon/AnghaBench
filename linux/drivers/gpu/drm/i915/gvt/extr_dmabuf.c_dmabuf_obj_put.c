
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_dmabuf_obj {int kref; } ;


 int dmabuf_gem_object_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void dmabuf_obj_put(struct intel_vgpu_dmabuf_obj *obj)
{
 kref_put(&obj->kref, dmabuf_gem_object_free);
}
