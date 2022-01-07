
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int u32 ;
struct amdgpu_cs_parser {TYPE_2__* job; } ;
struct TYPE_4__ {TYPE_1__* ibs; } ;
struct TYPE_3__ {int * ptr; } ;



__attribute__((used)) static inline u32 amdgpu_get_ib_value(struct amdgpu_cs_parser *p,
          uint32_t ib_idx, int idx)
{
 return p->job->ibs[ib_idx].ptr[idx];
}
