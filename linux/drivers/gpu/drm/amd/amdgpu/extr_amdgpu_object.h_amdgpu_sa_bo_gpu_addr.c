
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct amdgpu_sa_bo {scalar_t__ soffset; TYPE_1__* manager; } ;
struct TYPE_2__ {scalar_t__ gpu_addr; } ;



__attribute__((used)) static inline uint64_t amdgpu_sa_bo_gpu_addr(struct amdgpu_sa_bo *sa_bo)
{
 return sa_bo->manager->gpu_addr + sa_bo->soffset;
}
