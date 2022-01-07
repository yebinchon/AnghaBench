
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mapped_device {TYPE_3__* queue; int flags; } ;
struct dm_table {int dummy; } ;
struct TYPE_6__ {TYPE_2__* backing_dev_info; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_5__ {TYPE_1__ wb; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 struct dm_table* dm_get_live_table_fast (struct mapped_device*) ;
 int dm_put_live_table_fast (struct mapped_device*) ;
 scalar_t__ dm_request_based (struct mapped_device*) ;
 int dm_table_any_congested (struct dm_table*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int dm_any_congested(void *congested_data, int bdi_bits)
{
 int r = bdi_bits;
 struct mapped_device *md = congested_data;
 struct dm_table *map;

 if (!test_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags)) {
  if (dm_request_based(md)) {




   r = md->queue->backing_dev_info->wb.state & bdi_bits;
  } else {
   map = dm_get_live_table_fast(md);
   if (map)
    r = dm_table_any_congested(map, bdi_bits);
   dm_put_live_table_fast(md);
  }
 }

 return r;
}
