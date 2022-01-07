
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_completion {int ic; } ;


 int EIO ;
 int complete_journal_op (struct journal_completion*) ;
 int dm_integrity_io_error (int ,char*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void complete_journal_io(unsigned long error, void *context)
{
 struct journal_completion *comp = context;
 if (unlikely(error != 0))
  dm_integrity_io_error(comp->ic, "writing journal", -EIO);
 complete_journal_op(comp);
}
