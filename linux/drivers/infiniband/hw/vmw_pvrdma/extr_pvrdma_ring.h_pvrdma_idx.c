
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;
typedef int __u32 ;
typedef unsigned int const __s32 ;


 unsigned int const PVRDMA_INVALID_IDX ;
 unsigned int atomic_read (int *) ;
 scalar_t__ pvrdma_idx_valid (unsigned int const,int) ;

__attribute__((used)) static inline __s32 pvrdma_idx(atomic_t *var, __u32 max_elems)
{
 const unsigned int idx = atomic_read(var);

 if (pvrdma_idx_valid(idx, max_elems))
  return idx & (max_elems - 1);
 return PVRDMA_INVALID_IDX;
}
