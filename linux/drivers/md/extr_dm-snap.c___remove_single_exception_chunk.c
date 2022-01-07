
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int complete; } ;
struct dm_exception {scalar_t__ old_chunk; int new_chunk; } ;
typedef scalar_t__ chunk_t ;


 int DMERR (char*,unsigned long long,...) ;
 int EINVAL ;
 scalar_t__ dm_consecutive_chunk_count (struct dm_exception*) ;
 int dm_consecutive_chunk_count_dec (struct dm_exception*) ;
 struct dm_exception* dm_lookup_exception (int *,scalar_t__) ;
 int dm_remove_exception (struct dm_exception*) ;
 int free_completed_exception (struct dm_exception*) ;

__attribute__((used)) static int __remove_single_exception_chunk(struct dm_snapshot *s,
        chunk_t old_chunk)
{
 struct dm_exception *e;

 e = dm_lookup_exception(&s->complete, old_chunk);
 if (!e) {
  DMERR("Corruption detected: exception for block %llu is "
        "on disk but not in memory",
        (unsigned long long)old_chunk);
  return -EINVAL;
 }




 if (!dm_consecutive_chunk_count(e)) {
  dm_remove_exception(e);
  free_completed_exception(e);
  return 0;
 }
 if (old_chunk == e->old_chunk) {
  e->old_chunk++;
  e->new_chunk++;
 } else if (old_chunk != e->old_chunk +
     dm_consecutive_chunk_count(e)) {
  DMERR("Attempt to merge block %llu from the "
        "middle of a chunk range [%llu - %llu]",
        (unsigned long long)old_chunk,
        (unsigned long long)e->old_chunk,
        (unsigned long long)
        e->old_chunk + dm_consecutive_chunk_count(e));
  return -EINVAL;
 }

 dm_consecutive_chunk_count_dec(e);

 return 0;
}
