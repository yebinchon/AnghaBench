
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {unsigned int journal_section_entries; unsigned int journal_section_sectors; unsigned int journal_sections; } ;


 int BUG () ;
 int DMCRIT (char*,char const*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void access_journal_check(struct dm_integrity_c *ic, unsigned section, unsigned offset,
     bool e, const char *function)
{
}
