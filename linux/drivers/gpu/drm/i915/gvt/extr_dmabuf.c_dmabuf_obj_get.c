
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_dmabuf_obj {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void dmabuf_obj_get(struct intel_vgpu_dmabuf_obj *obj)
{
 kref_get(&obj->kref);
}
