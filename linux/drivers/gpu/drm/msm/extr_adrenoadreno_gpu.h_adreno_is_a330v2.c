
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ patchid; } ;
struct adreno_gpu {TYPE_1__ rev; } ;


 scalar_t__ adreno_is_a330 (struct adreno_gpu*) ;

__attribute__((used)) static inline bool adreno_is_a330v2(struct adreno_gpu *gpu)
{
 return adreno_is_a330(gpu) && (gpu->rev.patchid > 0);
}
