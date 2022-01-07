
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clone {TYPE_1__* dest_dev; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 int bio_set_dev (struct bio*,int ) ;

__attribute__((used)) static inline void remap_to_dest(struct clone *clone, struct bio *bio)
{
 bio_set_dev(bio, clone->dest_dev->bdev);
}
