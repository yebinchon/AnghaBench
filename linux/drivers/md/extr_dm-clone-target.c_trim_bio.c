
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_size; int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int to_bytes (unsigned int) ;

__attribute__((used)) static void trim_bio(struct bio *bio, sector_t sector, unsigned int len)
{
 bio->bi_iter.bi_sector = sector;
 bio->bi_iter.bi_size = to_bytes(len);
}
