
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mpath_io {int dummy; } ;
struct dm_bio_details {int dummy; } ;



__attribute__((used)) static size_t multipath_per_bio_data_size(void)
{
 return sizeof(struct dm_mpath_io) + sizeof(struct dm_bio_details);
}
