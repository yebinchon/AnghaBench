
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 unsigned int PBLK_EXPOSED_PAGE_SIZE ;

__attribute__((used)) static inline unsigned int pblk_get_secs(struct bio *bio)
{
 return bio->bi_iter.bi_size / PBLK_EXPOSED_PAGE_SIZE;
}
