
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_amdgpu_cs_chunk_syncobj {int flags; int point; int handle; } ;
struct amdgpu_cs_parser {int dummy; } ;
struct amdgpu_cs_chunk {int length_dw; scalar_t__ kdata; } ;


 int amdgpu_syncobj_lookup_and_add_to_sync (struct amdgpu_cs_parser*,int ,int ,int ) ;

__attribute__((used)) static int amdgpu_cs_process_syncobj_timeline_in_dep(struct amdgpu_cs_parser *p,
           struct amdgpu_cs_chunk *chunk)
{
 struct drm_amdgpu_cs_chunk_syncobj *syncobj_deps;
 unsigned num_deps;
 int i, r;

 syncobj_deps = (struct drm_amdgpu_cs_chunk_syncobj *)chunk->kdata;
 num_deps = chunk->length_dw * 4 /
  sizeof(struct drm_amdgpu_cs_chunk_syncobj);
 for (i = 0; i < num_deps; ++i) {
  r = amdgpu_syncobj_lookup_and_add_to_sync(p,
         syncobj_deps[i].handle,
         syncobj_deps[i].point,
         syncobj_deps[i].flags);
  if (r)
   return r;
 }

 return 0;
}
