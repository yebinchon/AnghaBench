
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_amdgpu_cs_chunk_sem {int handle; } ;
struct amdgpu_cs_parser {int dummy; } ;
struct amdgpu_cs_chunk {int length_dw; scalar_t__ kdata; } ;


 int amdgpu_syncobj_lookup_and_add_to_sync (struct amdgpu_cs_parser*,int ,int ,int ) ;

__attribute__((used)) static int amdgpu_cs_process_syncobj_in_dep(struct amdgpu_cs_parser *p,
         struct amdgpu_cs_chunk *chunk)
{
 struct drm_amdgpu_cs_chunk_sem *deps;
 unsigned num_deps;
 int i, r;

 deps = (struct drm_amdgpu_cs_chunk_sem *)chunk->kdata;
 num_deps = chunk->length_dw * 4 /
  sizeof(struct drm_amdgpu_cs_chunk_sem);
 for (i = 0; i < num_deps; ++i) {
  r = amdgpu_syncobj_lookup_and_add_to_sync(p, deps[i].handle,
         0, 0);
  if (r)
   return r;
 }

 return 0;
}
