
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_sector {int dummy; } ;
struct journal_entry {int dummy; } ;
struct dm_integrity_c {unsigned int journal_entry_size; } ;


 unsigned int JOURNAL_BLOCK_SECTORS ;
 struct journal_sector* access_journal (struct dm_integrity_c*,unsigned int,unsigned int) ;
 int access_journal_check (struct dm_integrity_c*,unsigned int,unsigned int,int,char*) ;

__attribute__((used)) static struct journal_entry *access_journal_entry(struct dm_integrity_c *ic, unsigned section, unsigned n)
{
 unsigned rel_sector, offset;
 struct journal_sector *js;

 access_journal_check(ic, section, n, 1, "access_journal_entry");

 rel_sector = n % JOURNAL_BLOCK_SECTORS;
 offset = n / JOURNAL_BLOCK_SECTORS;

 js = access_journal(ic, section, rel_sector);
 return (struct journal_entry *)((char *)js + offset * ic->journal_entry_size);
}
