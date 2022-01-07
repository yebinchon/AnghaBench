
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bios; } ;
struct pblk_rb_entry {TYPE_1__ w_ctx; } ;
struct pblk_rb {unsigned int nr_entries; int flush_point; struct pblk_rb_entry* entries; int inflight_flush_point; int sync; } ;
struct bio {int dummy; } ;


 unsigned int READ_ONCE (int ) ;
 int atomic_inc (int *) ;
 int bio_list_add (int *,struct bio*) ;
 int pblk_rb_sync_end (struct pblk_rb*,int *) ;
 int pblk_rb_sync_init (struct pblk_rb*,int *) ;
 int smp_store_release (int *,unsigned int) ;

__attribute__((used)) static int pblk_rb_flush_point_set(struct pblk_rb *rb, struct bio *bio,
       unsigned int pos)
{
 struct pblk_rb_entry *entry;
 unsigned int sync, flush_point;

 pblk_rb_sync_init(rb, ((void*)0));
 sync = READ_ONCE(rb->sync);

 if (pos == sync) {
  pblk_rb_sync_end(rb, ((void*)0));
  return 0;
 }





 flush_point = (pos == 0) ? (rb->nr_entries - 1) : (pos - 1);
 entry = &rb->entries[flush_point];


 smp_store_release(&rb->flush_point, flush_point);

 if (bio)
  bio_list_add(&entry->w_ctx.bios, bio);

 pblk_rb_sync_end(rb, ((void*)0));

 return bio ? 1 : 0;
}
