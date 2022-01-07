
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mpath_io {int dummy; } ;
typedef void dm_bio_details ;



__attribute__((used)) static struct dm_bio_details *get_bio_details_from_mpio(struct dm_mpath_io *mpio)
{

 void *bio_details = mpio + 1;
 return bio_details;
}
