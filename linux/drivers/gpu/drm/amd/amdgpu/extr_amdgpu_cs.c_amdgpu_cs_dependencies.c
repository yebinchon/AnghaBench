
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
struct amdgpu_cs_parser {int nchunks; struct amdgpu_cs_chunk* chunks; } ;
struct amdgpu_cs_chunk {int chunk_id; } ;
 int amdgpu_cs_process_fence_dep (struct amdgpu_cs_parser*,struct amdgpu_cs_chunk*) ;
 int amdgpu_cs_process_syncobj_in_dep (struct amdgpu_cs_parser*,struct amdgpu_cs_chunk*) ;
 int amdgpu_cs_process_syncobj_out_dep (struct amdgpu_cs_parser*,struct amdgpu_cs_chunk*) ;
 int amdgpu_cs_process_syncobj_timeline_in_dep (struct amdgpu_cs_parser*,struct amdgpu_cs_chunk*) ;
 int amdgpu_cs_process_syncobj_timeline_out_dep (struct amdgpu_cs_parser*,struct amdgpu_cs_chunk*) ;

__attribute__((used)) static int amdgpu_cs_dependencies(struct amdgpu_device *adev,
      struct amdgpu_cs_parser *p)
{
 int i, r;

 for (i = 0; i < p->nchunks; ++i) {
  struct amdgpu_cs_chunk *chunk;

  chunk = &p->chunks[i];

  switch (chunk->chunk_id) {
  case 133:
  case 132:
   r = amdgpu_cs_process_fence_dep(p, chunk);
   if (r)
    return r;
   break;
  case 131:
   r = amdgpu_cs_process_syncobj_in_dep(p, chunk);
   if (r)
    return r;
   break;
  case 130:
   r = amdgpu_cs_process_syncobj_out_dep(p, chunk);
   if (r)
    return r;
   break;
  case 128:
   r = amdgpu_cs_process_syncobj_timeline_in_dep(p, chunk);
   if (r)
    return r;
   break;
  case 129:
   r = amdgpu_cs_process_syncobj_timeline_out_dep(p, chunk);
   if (r)
    return r;
   break;
  }
 }

 return 0;
}
