
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_arg_set {int dummy; } ;
struct cache_args {scalar_t__ origin_sectors; TYPE_1__* ti; int origin_dev; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int at_least_one_arg (struct dm_arg_set*,char**) ;
 int dm_get_device (TYPE_1__*,int ,int,int *) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 scalar_t__ get_dev_size (int ) ;

__attribute__((used)) static int parse_origin_dev(struct cache_args *ca, struct dm_arg_set *as,
       char **error)
{
 int r;

 if (!at_least_one_arg(as, error))
  return -EINVAL;

 r = dm_get_device(ca->ti, dm_shift_arg(as), FMODE_READ | FMODE_WRITE,
     &ca->origin_dev);
 if (r) {
  *error = "Error opening origin device";
  return r;
 }

 ca->origin_sectors = get_dev_size(ca->origin_dev);
 if (ca->ti->len > ca->origin_sectors) {
  *error = "Device size larger than cached device";
  return -EINVAL;
 }

 return 0;
}
