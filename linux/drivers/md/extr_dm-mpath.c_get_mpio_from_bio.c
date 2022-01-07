
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mpath_io {int dummy; } ;
struct bio {int dummy; } ;


 struct dm_mpath_io* dm_per_bio_data (struct bio*,int ) ;
 int multipath_per_bio_data_size () ;

__attribute__((used)) static struct dm_mpath_io *get_mpio_from_bio(struct bio *bio)
{
 return dm_per_bio_data(bio, multipath_per_bio_data_size());
}
