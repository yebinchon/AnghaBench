
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adreno_gpu {int revn; } ;



__attribute__((used)) static inline int adreno_is_a420(struct adreno_gpu *gpu)
{
 return gpu->revn == 420;
}
