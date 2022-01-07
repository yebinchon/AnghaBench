
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_completion {int dummy; } ;
struct dm_integrity_c {unsigned int journal_section_sectors; } ;


 int rw_journal_sectors (struct dm_integrity_c*,int,int,unsigned int,unsigned int,struct journal_completion*) ;

__attribute__((used)) static void rw_journal(struct dm_integrity_c *ic, int op, int op_flags, unsigned section,
         unsigned n_sections, struct journal_completion *comp)
{
 unsigned sector, n_sectors;

 sector = section * ic->journal_section_sectors;
 n_sectors = n_sections * ic->journal_section_sectors;

 rw_journal_sectors(ic, op, op_flags, sector, n_sectors, comp);
}
