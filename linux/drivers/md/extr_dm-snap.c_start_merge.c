
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int state_bits; } ;


 int RUNNING_MERGE ;
 int snapshot_merge_next_chunks (struct dm_snapshot*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void start_merge(struct dm_snapshot *s)
{
 if (!test_and_set_bit(RUNNING_MERGE, &s->state_bits))
  snapshot_merge_next_chunks(s);
}
