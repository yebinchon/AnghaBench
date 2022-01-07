
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dm_arg_set {int dummy; } ;
struct clone {int source_dev; TYPE_1__* ti; } ;
typedef scalar_t__ sector_t ;
struct TYPE_3__ {scalar_t__ len; } ;


 int EINVAL ;
 int FMODE_READ ;
 int dm_get_device (TYPE_1__*,int ,int ,int *) ;
 int dm_put_device (TYPE_1__*,int ) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 scalar_t__ get_dev_size (int ) ;

__attribute__((used)) static int parse_source_dev(struct clone *clone, struct dm_arg_set *as, char **error)
{
 int r;
 sector_t source_dev_size;

 r = dm_get_device(clone->ti, dm_shift_arg(as), FMODE_READ,
     &clone->source_dev);
 if (r) {
  *error = "Error opening source device";
  return r;
 }

 source_dev_size = get_dev_size(clone->source_dev);
 if (source_dev_size < clone->ti->len) {
  dm_put_device(clone->ti, clone->source_dev);
  *error = "Device size larger than source device";
  return -EINVAL;
 }

 return 0;
}
