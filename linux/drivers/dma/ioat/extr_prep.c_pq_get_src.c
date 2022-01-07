
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_raw_descriptor {int * field; } ;
typedef int dma_addr_t ;


 int pq_idx_to_desc ;
 size_t* pq_idx_to_field ;

__attribute__((used)) static dma_addr_t pq_get_src(struct ioat_raw_descriptor *descs[2], int idx)
{
 struct ioat_raw_descriptor *raw = descs[pq_idx_to_desc >> idx & 1];

 return raw->field[pq_idx_to_field[idx]];
}
