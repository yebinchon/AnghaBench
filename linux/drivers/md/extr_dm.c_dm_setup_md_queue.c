
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {int dummy; } ;
struct mapped_device {int disk; int queue; } ;
struct dm_table {int dummy; } ;
typedef enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;


 int DMERR (char*) ;





 int WARN_ON_ONCE (int) ;
 int blk_queue_make_request (int ,int ) ;
 int blk_register_queue (int ) ;
 int dm_calculate_queue_limits (struct dm_table*,struct queue_limits*) ;
 int dm_get_md_type (struct mapped_device*) ;
 int dm_init_normal_md_queue (struct mapped_device*) ;
 int dm_make_request ;
 int dm_mq_init_request_queue (struct mapped_device*,struct dm_table*) ;
 int dm_table_set_restrictions (struct dm_table*,int ,struct queue_limits*) ;

int dm_setup_md_queue(struct mapped_device *md, struct dm_table *t)
{
 int r;
 struct queue_limits limits;
 enum dm_queue_mode type = dm_get_md_type(md);

 switch (type) {
 case 128:
  r = dm_mq_init_request_queue(md, t);
  if (r) {
   DMERR("Cannot initialize queue for request-based dm-mq mapped device");
   return r;
  }
  break;
 case 132:
 case 131:
 case 129:
  dm_init_normal_md_queue(md);
  blk_queue_make_request(md->queue, dm_make_request);
  break;
 case 130:
  WARN_ON_ONCE(1);
  break;
 }

 r = dm_calculate_queue_limits(t, &limits);
 if (r) {
  DMERR("Cannot calculate initial queue limits");
  return r;
 }
 dm_table_set_restrictions(t, md->queue, &limits);
 blk_register_queue(md->disk);

 return 0;
}
