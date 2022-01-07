
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_io {int range; struct journal_completion* comp; } ;
struct journal_completion {struct dm_integrity_c* ic; } ;
struct dm_integrity_c {int journal_io_mempool; } ;


 int EIO ;
 int complete_journal_op (struct journal_completion*) ;
 int dm_integrity_io_error (struct dm_integrity_c*,char*,int ) ;
 int mempool_free (struct journal_io*,int *) ;
 int remove_range (struct dm_integrity_c*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void complete_copy_from_journal(unsigned long error, void *context)
{
 struct journal_io *io = context;
 struct journal_completion *comp = io->comp;
 struct dm_integrity_c *ic = comp->ic;
 remove_range(ic, &io->range);
 mempool_free(io, &ic->journal_io_mempool);
 if (unlikely(error != 0))
  dm_integrity_io_error(ic, "copying from journal", -EIO);
 complete_journal_op(comp);
}
