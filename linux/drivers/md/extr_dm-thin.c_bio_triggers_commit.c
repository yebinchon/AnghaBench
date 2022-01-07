
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int td; } ;
struct bio {int bi_opf; } ;


 scalar_t__ dm_thin_changed_this_transaction (int ) ;
 scalar_t__ op_is_flush (int ) ;

__attribute__((used)) static int bio_triggers_commit(struct thin_c *tc, struct bio *bio)
{
 return op_is_flush(bio->bi_opf) &&
  dm_thin_changed_this_transaction(tc->td);
}
