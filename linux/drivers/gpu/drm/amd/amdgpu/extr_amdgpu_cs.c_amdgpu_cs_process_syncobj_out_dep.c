
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_amdgpu_cs_chunk_sem {int handle; } ;
struct amdgpu_cs_parser {scalar_t__ num_post_deps; TYPE_1__* post_deps; int filp; } ;
struct amdgpu_cs_chunk {int length_dw; scalar_t__ kdata; } ;
struct TYPE_2__ {scalar_t__ point; int * chain; int syncobj; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_syncobj_find (int ,int ) ;
 TYPE_1__* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int amdgpu_cs_process_syncobj_out_dep(struct amdgpu_cs_parser *p,
          struct amdgpu_cs_chunk *chunk)
{
 struct drm_amdgpu_cs_chunk_sem *deps;
 unsigned num_deps;
 int i;

 deps = (struct drm_amdgpu_cs_chunk_sem *)chunk->kdata;
 num_deps = chunk->length_dw * 4 /
  sizeof(struct drm_amdgpu_cs_chunk_sem);

 if (p->post_deps)
  return -EINVAL;

 p->post_deps = kmalloc_array(num_deps, sizeof(*p->post_deps),
         GFP_KERNEL);
 p->num_post_deps = 0;

 if (!p->post_deps)
  return -ENOMEM;


 for (i = 0; i < num_deps; ++i) {
  p->post_deps[i].syncobj =
   drm_syncobj_find(p->filp, deps[i].handle);
  if (!p->post_deps[i].syncobj)
   return -EINVAL;
  p->post_deps[i].chain = ((void*)0);
  p->post_deps[i].point = 0;
  p->num_post_deps++;
 }

 return 0;
}
