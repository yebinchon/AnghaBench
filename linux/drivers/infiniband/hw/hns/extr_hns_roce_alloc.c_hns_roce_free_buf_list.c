
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int kfree (int *) ;

void hns_roce_free_buf_list(dma_addr_t **bufs, int region_cnt)
{
 int i;

 for (i = 0; i < region_cnt; i++) {
  kfree(bufs[i]);
  bufs[i] = ((void*)0);
 }
}
