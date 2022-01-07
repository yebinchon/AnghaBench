
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {int dummy; } ;
struct cache_args {int cache_dev; int cache_sectors; int ti; } ;


 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int at_least_one_arg (struct dm_arg_set*,char**) ;
 int dm_get_device (int ,int ,int,int *) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 int get_dev_size (int ) ;

__attribute__((used)) static int parse_cache_dev(struct cache_args *ca, struct dm_arg_set *as,
      char **error)
{
 int r;

 if (!at_least_one_arg(as, error))
  return -EINVAL;

 r = dm_get_device(ca->ti, dm_shift_arg(as), FMODE_READ | FMODE_WRITE,
     &ca->cache_dev);
 if (r) {
  *error = "Error opening cache device";
  return r;
 }
 ca->cache_sectors = get_dev_size(ca->cache_dev);

 return 0;
}
