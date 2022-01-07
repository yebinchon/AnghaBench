
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adreno_gpu {int revn; } ;



__attribute__((used)) static inline bool adreno_is_a3xx(struct adreno_gpu *gpu)
{
 return (gpu->revn >= 300) && (gpu->revn < 400);
}
