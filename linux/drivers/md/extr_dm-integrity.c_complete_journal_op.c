
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_completion {int comp; int in_flight; } ;


 int BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int complete (int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void complete_journal_op(void *context)
{
 struct journal_completion *comp = context;
 BUG_ON(!atomic_read(&comp->in_flight));
 if (likely(atomic_dec_and_test(&comp->in_flight)))
  complete(&comp->comp);
}
