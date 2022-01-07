
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {scalar_t__ first_merging_chunk; scalar_t__ num_merging_chunks; int lock; } ;
struct bio {int dummy; } ;
typedef scalar_t__ chunk_t ;


 struct bio* __release_queued_bios_after_merge (struct dm_snapshot*) ;
 int __remove_single_exception_chunk (struct dm_snapshot*,scalar_t__) ;
 int down_write (int *) ;
 int flush_bios (struct bio*) ;
 int up_write (int *) ;

__attribute__((used)) static int remove_single_exception_chunk(struct dm_snapshot *s)
{
 struct bio *b = ((void*)0);
 int r;
 chunk_t old_chunk = s->first_merging_chunk + s->num_merging_chunks - 1;

 down_write(&s->lock);





 do {
  r = __remove_single_exception_chunk(s, old_chunk);
  if (r)
   goto out;
 } while (old_chunk-- > s->first_merging_chunk);

 b = __release_queued_bios_after_merge(s);

out:
 up_write(&s->lock);
 if (b)
  flush_bios(b);

 return r;
}
