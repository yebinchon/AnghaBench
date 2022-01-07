
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_hook_info {int bi_end_io; } ;
struct bio {int bi_end_io; } ;



__attribute__((used)) static void dm_unhook_bio(struct dm_hook_info *h, struct bio *bio)
{
 bio->bi_end_io = h->bi_end_io;
}
