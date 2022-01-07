
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;
typedef int __u32 ;


 int atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static inline void pvrdma_idx_ring_inc(atomic_t *var, __u32 max_elems)
{
 __u32 idx = atomic_read(var) + 1;

 idx &= (max_elems << 1) - 1;
 atomic_set(var, idx);
}
