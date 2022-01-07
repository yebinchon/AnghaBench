
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {int page; } ;
struct journal_sector {int dummy; } ;
struct dm_integrity_c {int dummy; } ;


 unsigned int PAGE_SIZE ;
 unsigned int SECTOR_SHIFT ;
 char* lowmem_page_address (int ) ;
 int page_list_location (struct dm_integrity_c*,unsigned int,unsigned int,unsigned int*,unsigned int*) ;

__attribute__((used)) static struct journal_sector *access_page_list(struct dm_integrity_c *ic, struct page_list *pl,
            unsigned section, unsigned offset, unsigned *n_sectors)
{
 unsigned pl_index, pl_offset;
 char *va;

 page_list_location(ic, section, offset, &pl_index, &pl_offset);

 if (n_sectors)
  *n_sectors = (PAGE_SIZE - pl_offset) >> SECTOR_SHIFT;

 va = lowmem_page_address(pl[pl_index].page);

 return (struct journal_sector *)(va + pl_offset);
}
