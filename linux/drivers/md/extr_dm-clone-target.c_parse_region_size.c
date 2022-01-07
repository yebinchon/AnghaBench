
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_arg_set {int dummy; } ;
struct dm_arg {char* error; int max; int min; } ;
struct clone {unsigned int region_size; TYPE_2__* dest_dev; TYPE_1__* source_dev; } ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int bdev; } ;


 int EINVAL ;
 int MAX_REGION_SIZE ;
 int MIN_REGION_SIZE ;
 int bdev_logical_block_size (int ) ;
 int dm_read_arg (struct dm_arg*,struct dm_arg_set*,unsigned int*,char**) ;
 int is_power_of_2 (unsigned int) ;

__attribute__((used)) static int parse_region_size(struct clone *clone, struct dm_arg_set *as, char **error)
{
 int r;
 unsigned int region_size;
 struct dm_arg arg;

 arg.min = MIN_REGION_SIZE;
 arg.max = MAX_REGION_SIZE;
 arg.error = "Invalid region size";

 r = dm_read_arg(&arg, as, &region_size, error);
 if (r)
  return r;


 if (!is_power_of_2(region_size)) {
  *error = "Region size is not a power of 2";
  return -EINVAL;
 }


 if (region_size % (bdev_logical_block_size(clone->source_dev->bdev) >> 9) ||
     region_size % (bdev_logical_block_size(clone->dest_dev->bdev) >> 9)) {
  *error = "Region size is not a multiple of device logical block size";
  return -EINVAL;
 }

 clone->region_size = region_size;

 return 0;
}
