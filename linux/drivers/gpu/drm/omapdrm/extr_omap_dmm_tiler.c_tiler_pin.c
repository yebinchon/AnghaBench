
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tiler_block {int area; } ;
struct page {int dummy; } ;


 int fill (int *,struct page**,int ,int ,int) ;
 int tiler_unpin (struct tiler_block*) ;

int tiler_pin(struct tiler_block *block, struct page **pages,
  u32 npages, u32 roll, bool wait)
{
 int ret;

 ret = fill(&block->area, pages, npages, roll, wait);

 if (ret)
  tiler_unpin(block);

 return ret;
}
