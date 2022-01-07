
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_raw_descriptor {int * field; } ;
typedef int dma_addr_t ;


 size_t* pq16_idx_to_desc ;
 size_t* pq16_idx_to_field ;

__attribute__((used)) static dma_addr_t pq16_get_src(struct ioat_raw_descriptor *desc[3], int idx)
{
 struct ioat_raw_descriptor *raw = desc[pq16_idx_to_desc[idx]];

 return raw->field[pq16_idx_to_field[idx]];
}
