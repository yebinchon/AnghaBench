
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_cs_parser {int num_post_deps; int fence; TYPE_1__* post_deps; } ;
struct TYPE_2__ {int syncobj; int * chain; scalar_t__ point; } ;


 int drm_syncobj_add_point (int ,int *,int ,scalar_t__) ;
 int drm_syncobj_replace_fence (int ,int ) ;

__attribute__((used)) static void amdgpu_cs_post_dependencies(struct amdgpu_cs_parser *p)
{
 int i;

 for (i = 0; i < p->num_post_deps; ++i) {
  if (p->post_deps[i].chain && p->post_deps[i].point) {
   drm_syncobj_add_point(p->post_deps[i].syncobj,
           p->post_deps[i].chain,
           p->fence, p->post_deps[i].point);
   p->post_deps[i].chain = ((void*)0);
  } else {
   drm_syncobj_replace_fence(p->post_deps[i].syncobj,
        p->fence);
  }
 }
}
