
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_buf_region {int count; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int hns_roce_free_buf_list (int **,int) ;
 int * kcalloc (int ,int,int ) ;

int hns_roce_alloc_buf_list(struct hns_roce_buf_region *regions,
       dma_addr_t **bufs, int region_cnt)
{
 struct hns_roce_buf_region *r;
 int i;

 for (i = 0; i < region_cnt; i++) {
  r = &regions[i];
  bufs[i] = kcalloc(r->count, sizeof(dma_addr_t), GFP_KERNEL);
  if (!bufs[i])
   goto err_alloc;
 }

 return 0;

err_alloc:
 hns_roce_free_buf_list(bufs, i);

 return -ENOMEM;
}
