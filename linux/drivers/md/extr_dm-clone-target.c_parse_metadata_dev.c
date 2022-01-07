
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dm_arg_set {int dummy; } ;
struct clone {TYPE_1__* metadata_dev; int ti; } ;
typedef scalar_t__ sector_t ;
struct TYPE_3__ {int bdev; } ;


 int BDEVNAME_SIZE ;
 int DMWARN (char*,int ,int ) ;
 int DM_CLONE_METADATA_MAX_SECTORS ;
 scalar_t__ DM_CLONE_METADATA_MAX_SECTORS_WARNING ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int bdevname (int ,char*) ;
 int dm_get_device (int ,int ,int,TYPE_1__**) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 scalar_t__ get_dev_size (TYPE_1__*) ;

__attribute__((used)) static int parse_metadata_dev(struct clone *clone, struct dm_arg_set *as, char **error)
{
 int r;
 sector_t metadata_dev_size;
 char b[BDEVNAME_SIZE];

 r = dm_get_device(clone->ti, dm_shift_arg(as), FMODE_READ | FMODE_WRITE,
     &clone->metadata_dev);
 if (r) {
  *error = "Error opening metadata device";
  return r;
 }

 metadata_dev_size = get_dev_size(clone->metadata_dev);
 if (metadata_dev_size > DM_CLONE_METADATA_MAX_SECTORS_WARNING)
  DMWARN("Metadata device %s is larger than %u sectors: excess space will not be used.",
         bdevname(clone->metadata_dev->bdev, b), DM_CLONE_METADATA_MAX_SECTORS);

 return 0;
}
