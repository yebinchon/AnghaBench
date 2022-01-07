
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {scalar_t__ vmap_count; scalar_t__ vaddr; } ;



__attribute__((used)) static inline bool is_vunmapable(struct msm_gem_object *msm_obj)
{
 return (msm_obj->vmap_count == 0) && msm_obj->vaddr;
}
