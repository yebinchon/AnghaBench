
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {unsigned int journal_section_sectors; } ;


 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned int SECTOR_SHIFT ;
 int access_journal_check (struct dm_integrity_c*,unsigned int,unsigned int,int,char*) ;

__attribute__((used)) static void page_list_location(struct dm_integrity_c *ic, unsigned section, unsigned offset,
          unsigned *pl_index, unsigned *pl_offset)
{
 unsigned sector;

 access_journal_check(ic, section, offset, 0, "page_list_location");

 sector = section * ic->journal_section_sectors + offset;

 *pl_index = sector >> (PAGE_SHIFT - SECTOR_SHIFT);
 *pl_offset = (sector << SECTOR_SHIFT) & (PAGE_SIZE - 1);
}
