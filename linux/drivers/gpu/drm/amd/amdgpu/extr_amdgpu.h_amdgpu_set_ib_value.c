
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpu_cs_parser {TYPE_2__* job; } ;
struct TYPE_4__ {TYPE_1__* ibs; } ;
struct TYPE_3__ {size_t* ptr; } ;



__attribute__((used)) static inline void amdgpu_set_ib_value(struct amdgpu_cs_parser *p,
           uint32_t ib_idx, int idx,
           uint32_t value)
{
 p->job->ibs[ib_idx].ptr[idx] = value;
}
