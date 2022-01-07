
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int flush_list; int flush_thread; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_list_empty (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void writecache_offload_bio(struct dm_writecache *wc, struct bio *bio)
{
 if (bio_list_empty(&wc->flush_list))
  wake_up_process(wc->flush_thread);
 bio_list_add(&wc->flush_list, bio);
}
