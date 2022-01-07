
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_ring {int cons_head; int prod_tail; } ;
typedef int __u32 ;
typedef int __s32 ;


 int PVRDMA_INVALID_IDX ;
 int atomic_read (int *) ;
 scalar_t__ pvrdma_idx_valid (int const,int) ;

__attribute__((used)) static inline __s32 pvrdma_idx_ring_has_data(const struct pvrdma_ring *r,
          __u32 max_elems, __u32 *out_head)
{
 const __u32 tail = atomic_read(&r->prod_tail);
 const __u32 head = atomic_read(&r->cons_head);

 if (pvrdma_idx_valid(tail, max_elems) &&
     pvrdma_idx_valid(head, max_elems)) {
  *out_head = head & (max_elems - 1);
  return tail != head;
 }
 return PVRDMA_INVALID_IDX;
}
