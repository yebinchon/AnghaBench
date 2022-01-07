
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static inline int pvrdma_idx_valid(__u32 idx, __u32 max_elems)
{

 return (idx & ~((max_elems << 1) - 1)) == 0;
}
