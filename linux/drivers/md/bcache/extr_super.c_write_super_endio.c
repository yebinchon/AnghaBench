
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {TYPE_1__* set; } ;
struct bio {int bi_status; struct cache* bi_private; } ;
struct TYPE_2__ {int sb_write; } ;


 int bch_count_io_errors (struct cache*,int ,int ,char*) ;
 int closure_put (int *) ;

__attribute__((used)) static void write_super_endio(struct bio *bio)
{
 struct cache *ca = bio->bi_private;


 bch_count_io_errors(ca, bio->bi_status, 0,
       "writing superblock");
 closure_put(&ca->set->sb_write);
}
