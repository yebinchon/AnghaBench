
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** scatterlist ;
struct dm_integrity_c {unsigned int journal_sections; } ;


 int kvfree (int ******) ;

__attribute__((used)) static void dm_integrity_free_journal_scatterlist(struct dm_integrity_c *ic, struct scatterlist **sl)
{
 unsigned i;
 for (i = 0; i < ic->journal_sections; i++)
  kvfree(sl[i]);
 kvfree(sl);
}
