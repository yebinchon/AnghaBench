
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_plug {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 struct bio* bio_list_pop (struct bio_list*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int generic_make_request (struct bio*) ;

__attribute__((used)) static void submit_bios(struct bio_list *bios)
{
 struct bio *bio;
 struct blk_plug plug;

 blk_start_plug(&plug);

 while ((bio = bio_list_pop(bios)))
  generic_make_request(bio);

 blk_finish_plug(&plug);
}
