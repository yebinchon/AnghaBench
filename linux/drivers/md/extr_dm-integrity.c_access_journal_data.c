
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct journal_sector {int dummy; } ;
struct dm_integrity_c {TYPE_1__* sb; } ;
struct TYPE_2__ {unsigned int log2_sectors_per_block; } ;


 scalar_t__ JOURNAL_BLOCK_SECTORS ;
 struct journal_sector* access_journal (struct dm_integrity_c*,unsigned int,unsigned int) ;
 int access_journal_check (struct dm_integrity_c*,unsigned int,unsigned int,int,char*) ;

__attribute__((used)) static struct journal_sector *access_journal_data(struct dm_integrity_c *ic, unsigned section, unsigned n)
{
 n <<= ic->sb->log2_sectors_per_block;

 n += JOURNAL_BLOCK_SECTORS;

 access_journal_check(ic, section, n, 0, "access_journal_data");

 return access_journal(ic, section, n);
}
