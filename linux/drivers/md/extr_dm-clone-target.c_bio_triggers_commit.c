
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int cmd; } ;
struct bio {int bi_opf; } ;


 scalar_t__ dm_clone_changed_this_transaction (int ) ;
 scalar_t__ op_is_flush (int ) ;

__attribute__((used)) static bool bio_triggers_commit(struct clone *clone, struct bio *bio)
{
 return op_is_flush(bio->bi_opf) &&
  dm_clone_changed_this_transaction(clone->cmd);
}
