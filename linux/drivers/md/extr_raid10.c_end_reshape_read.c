
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10bio {int read_slot; } ;
struct bio {struct r10bio* bi_private; } ;


 int __end_sync_read (struct r10bio*,struct bio*,int ) ;

__attribute__((used)) static void end_reshape_read(struct bio *bio)
{

 struct r10bio *r10_bio = bio->bi_private;

 __end_sync_read(r10_bio, bio, r10_bio->read_slot);
}
