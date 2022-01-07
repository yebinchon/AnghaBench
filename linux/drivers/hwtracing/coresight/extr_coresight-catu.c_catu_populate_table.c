
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* daddrs; } ;
struct tmc_sg_table {int dev; TYPE_1__ data_pages; } ;
typedef int dma_addr_t ;
typedef int cate_t ;


 size_t CATU_LINK_NEXT ;
 size_t CATU_LINK_PREV ;
 int CATU_PAGES_PER_SYSPAGE ;
 unsigned long CATU_PAGE_SIZE ;
 int CATU_PTRS_PER_PAGE ;
 unsigned long SZ_1M ;
 int catu_dbg (int ,char*,unsigned long,int,int,...) ;
 int * catu_get_table (struct tmc_sg_table*,unsigned long,int*) ;
 int catu_make_entry (int) ;
 int memset (int *,int ,int) ;
 unsigned long tmc_sg_table_buf_size (struct tmc_sg_table*) ;
 int tmc_sg_table_sync_table (struct tmc_sg_table*) ;

__attribute__((used)) static void
catu_populate_table(struct tmc_sg_table *catu_table)
{
 int i;
 int sys_pidx;
 int catu_pidx;
 unsigned long offset, buf_size, table_end;
 dma_addr_t data_daddr;
 dma_addr_t prev_taddr, next_taddr, cur_taddr;
 cate_t *table_ptr, *next_table;

 buf_size = tmc_sg_table_buf_size(catu_table);
 sys_pidx = catu_pidx = 0;
 offset = 0;

 table_ptr = catu_get_table(catu_table, 0, &cur_taddr);
 prev_taddr = 0;

 while (offset < buf_size) {






  table_end = (offset + SZ_1M) < buf_size ?
       (offset + SZ_1M) : buf_size;
  for (i = 0; offset < table_end;
       i++, offset += CATU_PAGE_SIZE) {

   data_daddr = catu_table->data_pages.daddrs[sys_pidx] +
         catu_pidx * CATU_PAGE_SIZE;
   catu_dbg(catu_table->dev,
    "[table %5ld:%03d] 0x%llx\n",
    (offset >> 20), i, data_daddr);
   table_ptr[i] = catu_make_entry(data_daddr);

   catu_pidx = (catu_pidx + 1) % CATU_PAGES_PER_SYSPAGE;
   if (catu_pidx == 0)
    sys_pidx++;
  }






  if (offset == buf_size) {
   memset(&table_ptr[i], 0,
          sizeof(cate_t) * (CATU_PTRS_PER_PAGE - i));
   next_taddr = 0;
  } else {
   next_table = catu_get_table(catu_table,
          offset, &next_taddr);
  }

  table_ptr[CATU_LINK_PREV] = catu_make_entry(prev_taddr);
  table_ptr[CATU_LINK_NEXT] = catu_make_entry(next_taddr);

  catu_dbg(catu_table->dev,
   "[table%5ld]: Cur: 0x%llx Prev: 0x%llx, Next: 0x%llx\n",
   (offset >> 20) - 1, cur_taddr, prev_taddr, next_taddr);


  if (next_taddr) {
   prev_taddr = cur_taddr;
   cur_taddr = next_taddr;
   table_ptr = next_table;
  }
 }


 tmc_sg_table_sync_table(catu_table);
}
