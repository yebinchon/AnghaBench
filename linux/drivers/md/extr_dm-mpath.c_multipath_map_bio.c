
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int dummy; } ;
struct dm_target {struct multipath* private; } ;
struct dm_mpath_io {int dummy; } ;
struct bio {int dummy; } ;


 int __multipath_map_bio (struct multipath*,struct bio*,struct dm_mpath_io*) ;
 int multipath_init_per_bio_data (struct bio*,struct dm_mpath_io**) ;

__attribute__((used)) static int multipath_map_bio(struct dm_target *ti, struct bio *bio)
{
 struct multipath *m = ti->private;
 struct dm_mpath_io *mpio = ((void*)0);

 multipath_init_per_bio_data(bio, &mpio);
 return __multipath_map_bio(m, bio, mpio);
}
