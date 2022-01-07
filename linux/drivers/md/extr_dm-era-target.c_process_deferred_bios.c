
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_list {int dummy; } ;
struct era {TYPE_1__* md; int deferred_lock; struct bio_list deferred_bios; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int current_writeset; int bitset_info; } ;


 int bio_io_error (struct bio*) ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int generic_make_request (struct bio*) ;
 int get_block (struct era*,struct bio*) ;
 int metadata_commit (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeset_test_and_set (int *,int ,int ) ;

__attribute__((used)) static void process_deferred_bios(struct era *era)
{
 int r;
 struct bio_list deferred_bios, marked_bios;
 struct bio *bio;
 bool commit_needed = 0;
 bool failed = 0;

 bio_list_init(&deferred_bios);
 bio_list_init(&marked_bios);

 spin_lock(&era->deferred_lock);
 bio_list_merge(&deferred_bios, &era->deferred_bios);
 bio_list_init(&era->deferred_bios);
 spin_unlock(&era->deferred_lock);

 while ((bio = bio_list_pop(&deferred_bios))) {
  r = writeset_test_and_set(&era->md->bitset_info,
       era->md->current_writeset,
       get_block(era, bio));
  if (r < 0) {




   failed = 1;

  } else if (r == 0)
   commit_needed = 1;

  bio_list_add(&marked_bios, bio);
 }

 if (commit_needed) {
  r = metadata_commit(era->md);
  if (r)
   failed = 1;
 }

 if (failed)
  while ((bio = bio_list_pop(&marked_bios)))
   bio_io_error(bio);
 else
  while ((bio = bio_list_pop(&marked_bios)))
   generic_make_request(bio);
}
