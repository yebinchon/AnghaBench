
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvrdma_page_dir {int npages; } ;


 int EINVAL ;
 int pvrdma_page_dir_insert_dma (struct pvrdma_page_dir*,int,int ) ;

int pvrdma_page_dir_insert_page_list(struct pvrdma_page_dir *pdir,
         u64 *page_list,
         int num_pages)
{
 int i;
 int ret;

 if (num_pages > pdir->npages)
  return -EINVAL;

 for (i = 0; i < num_pages; i++) {
  ret = pvrdma_page_dir_insert_dma(pdir, i, page_list[i]);
  if (ret)
   return ret;
 }

 return 0;
}
