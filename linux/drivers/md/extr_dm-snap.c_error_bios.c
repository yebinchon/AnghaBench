
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_next; } ;


 int bio_io_error (struct bio*) ;

__attribute__((used)) static void error_bios(struct bio *bio)
{
 struct bio *n;

 while (bio) {
  n = bio->bi_next;
  bio->bi_next = ((void*)0);
  bio_io_error(bio);
  bio = n;
 }
}
