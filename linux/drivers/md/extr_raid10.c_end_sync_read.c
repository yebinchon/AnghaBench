
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int dummy; } ;
struct r10bio {TYPE_1__* mddev; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct r10conf* private; } ;


 int __end_sync_read (struct r10bio*,struct bio*,int) ;
 int find_bio_disk (struct r10conf*,struct r10bio*,struct bio*,int *,int *) ;
 struct r10bio* get_resync_r10bio (struct bio*) ;

__attribute__((used)) static void end_sync_read(struct bio *bio)
{
 struct r10bio *r10_bio = get_resync_r10bio(bio);
 struct r10conf *conf = r10_bio->mddev->private;
 int d = find_bio_disk(conf, r10_bio, bio, ((void*)0), ((void*)0));

 __end_sync_read(r10_bio, bio, d);
}
