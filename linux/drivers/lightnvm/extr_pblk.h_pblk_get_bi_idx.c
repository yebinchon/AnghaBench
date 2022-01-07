
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bi_idx; } ;
struct bio {TYPE_1__ bi_iter; } ;



__attribute__((used)) static inline unsigned int pblk_get_bi_idx(struct bio *bio)
{
 return bio->bi_iter.bi_idx;
}
