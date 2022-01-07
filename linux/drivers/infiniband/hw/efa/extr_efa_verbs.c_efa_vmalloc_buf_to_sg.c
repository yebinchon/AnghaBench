
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct scatterlist* kcalloc (int,int,int ) ;
 int kfree (struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,int,int ) ;
 struct page* vmalloc_to_page (int *) ;

__attribute__((used)) static struct scatterlist *efa_vmalloc_buf_to_sg(u64 *buf, int page_cnt)
{
 struct scatterlist *sglist;
 struct page *pg;
 int i;

 sglist = kcalloc(page_cnt, sizeof(*sglist), GFP_KERNEL);
 if (!sglist)
  return ((void*)0);
 sg_init_table(sglist, page_cnt);
 for (i = 0; i < page_cnt; i++) {
  pg = vmalloc_to_page(buf);
  if (!pg)
   goto err;
  sg_set_page(&sglist[i], pg, PAGE_SIZE, 0);
  buf += PAGE_SIZE / sizeof(*buf);
 }
 return sglist;

err:
 kfree(sglist);
 return ((void*)0);
}
