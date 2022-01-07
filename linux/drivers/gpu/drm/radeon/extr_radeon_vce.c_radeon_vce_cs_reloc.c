
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int* ptr; } ;
struct radeon_cs_parser {TYPE_1__ ib; struct radeon_bo_list* relocs; struct radeon_cs_chunk* chunk_relocs; } ;
struct radeon_cs_chunk {unsigned int length_dw; } ;
struct radeon_bo_list {int gpu_offset; int robj; } ;


 int DRM_ERROR (char*,unsigned int,...) ;
 int EINVAL ;
 int radeon_bo_size (int ) ;
 void* radeon_get_ib_value (struct radeon_cs_parser*,int) ;

int radeon_vce_cs_reloc(struct radeon_cs_parser *p, int lo, int hi,
   unsigned size)
{
 struct radeon_cs_chunk *relocs_chunk;
 struct radeon_bo_list *reloc;
 uint64_t start, end, offset;
 unsigned idx;

 relocs_chunk = p->chunk_relocs;
 offset = radeon_get_ib_value(p, lo);
 idx = radeon_get_ib_value(p, hi);

 if (idx >= relocs_chunk->length_dw) {
  DRM_ERROR("Relocs at %d after relocations chunk end %d !\n",
     idx, relocs_chunk->length_dw);
  return -EINVAL;
 }

 reloc = &p->relocs[(idx / 4)];
 start = reloc->gpu_offset;
 end = start + radeon_bo_size(reloc->robj);
 start += offset;

 p->ib.ptr[lo] = start & 0xFFFFFFFF;
 p->ib.ptr[hi] = start >> 32;

 if (end <= start) {
  DRM_ERROR("invalid reloc offset %llX!\n", offset);
  return -EINVAL;
 }
 if ((end - start) < size) {
  DRM_ERROR("buffer to small (%d / %d)!\n",
   (unsigned)(end - start), size);
  return -EINVAL;
 }

 return 0;
}
