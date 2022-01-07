
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int deferred_lock; int deferred_bios; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_worker (struct era*) ;

__attribute__((used)) static void defer_bio(struct era *era, struct bio *bio)
{
 spin_lock(&era->deferred_lock);
 bio_list_add(&era->deferred_bios, bio);
 spin_unlock(&era->deferred_lock);

 wake_worker(era);
}
