
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct queue_limits {scalar_t__ max_discard_sectors; } ;
struct clone {scalar_t__ region_size; int flags; TYPE_1__* dest_dev; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {struct queue_limits limits; } ;
struct TYPE_3__ {struct block_device* bdev; } ;


 int BDEVNAME_SIZE ;
 int DMWARN (char*,int ,char const*) ;
 int DM_CLONE_DISCARD_PASSDOWN ;
 TYPE_2__* bdev_get_queue (struct block_device*) ;
 int bdev_supports_discards (struct block_device*) ;
 int bdevname (struct block_device*,char*) ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void disable_passdown_if_not_supported(struct clone *clone)
{
 struct block_device *dest_dev = clone->dest_dev->bdev;
 struct queue_limits *dest_limits = &bdev_get_queue(dest_dev)->limits;
 const char *reason = ((void*)0);
 char buf[BDEVNAME_SIZE];

 if (!test_bit(DM_CLONE_DISCARD_PASSDOWN, &clone->flags))
  return;

 if (!bdev_supports_discards(dest_dev))
  reason = "discard unsupported";
 else if (dest_limits->max_discard_sectors < clone->region_size)
  reason = "max discard sectors smaller than a region";

 if (reason) {
  DMWARN("Destination device (%s) %s: Disabling discard passdown.",
         bdevname(dest_dev, buf), reason);
  clear_bit(DM_CLONE_DISCARD_PASSDOWN, &clone->flags);
 }
}
