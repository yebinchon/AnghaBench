
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_private; } ;


 int bio_put (struct bio*) ;
 int queue_passdown_pt2 (int ) ;

__attribute__((used)) static void passdown_endio(struct bio *bio)
{




 queue_passdown_pt2(bio->bi_private);
 bio_put(bio);
}
