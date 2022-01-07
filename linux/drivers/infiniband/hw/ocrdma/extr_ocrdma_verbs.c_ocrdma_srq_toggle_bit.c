
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ocrdma_srq {unsigned int* idx_bit_fields; } ;



__attribute__((used)) static void ocrdma_srq_toggle_bit(struct ocrdma_srq *srq, unsigned int idx)
{
 unsigned int i = idx / 32;
 u32 mask = (1U << (idx % 32));

 srq->idx_bit_fields[i] ^= mask;
}
