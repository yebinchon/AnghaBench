
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * ptr; } ;
struct radeon_cs_parser {TYPE_1__ ib; struct radeon_cs_chunk* chunk_ib; } ;
struct radeon_cs_chunk {int * kdata; } ;



__attribute__((used)) static inline u32 radeon_get_ib_value(struct radeon_cs_parser *p, int idx)
{
 struct radeon_cs_chunk *ibc = p->chunk_ib;

 if (ibc->kdata)
  return ibc->kdata[idx];
 return p->ib.ptr[idx];
}
