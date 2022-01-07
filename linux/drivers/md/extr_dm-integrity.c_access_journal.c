
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_sector {int dummy; } ;
struct dm_integrity_c {int journal; } ;


 struct journal_sector* access_page_list (struct dm_integrity_c*,int ,unsigned int,unsigned int,int *) ;

__attribute__((used)) static struct journal_sector *access_journal(struct dm_integrity_c *ic, unsigned section, unsigned offset)
{
 return access_page_list(ic, ic->journal, section, offset, ((void*)0));
}
