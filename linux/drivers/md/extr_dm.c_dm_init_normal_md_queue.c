
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mapped_device {TYPE_2__* queue; } ;
struct TYPE_4__ {TYPE_1__* backing_dev_info; } ;
struct TYPE_3__ {int congested_fn; } ;


 int dm_any_congested ;

__attribute__((used)) static void dm_init_normal_md_queue(struct mapped_device *md)
{



 md->queue->backing_dev_info->congested_fn = dm_any_congested;
}
