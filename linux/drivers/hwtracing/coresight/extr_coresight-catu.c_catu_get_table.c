
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_pages {int * pages; scalar_t__* daddrs; } ;
struct tmc_sg_table {struct tmc_pages table_pages; } ;
typedef scalar_t__ dma_addr_t ;
typedef int cate_t ;


 unsigned int CATU_PAGES_PER_SYSPAGE ;
 unsigned int CATU_PAGE_SIZE ;
 void* page_address (int ) ;
 unsigned long tmc_sg_table_buf_size (struct tmc_sg_table*) ;

__attribute__((used)) static inline cate_t *catu_get_table(struct tmc_sg_table *catu_table,
         unsigned long offset,
         dma_addr_t *daddrp)
{
 unsigned long buf_size = tmc_sg_table_buf_size(catu_table);
 unsigned int table_nr, pg_idx, pg_offset;
 struct tmc_pages *table_pages = &catu_table->table_pages;
 void *ptr;


 offset %= buf_size;





 table_nr = offset >> 20;

 pg_idx = table_nr / CATU_PAGES_PER_SYSPAGE;
 pg_offset = (table_nr % CATU_PAGES_PER_SYSPAGE) * CATU_PAGE_SIZE;
 if (daddrp)
  *daddrp = table_pages->daddrs[pg_idx] + pg_offset;
 ptr = page_address(table_pages->pages[pg_idx]);
 return (cate_t *)((unsigned long)ptr + pg_offset);
}
