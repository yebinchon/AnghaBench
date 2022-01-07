
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {scalar_t__ max_discard_sectors; } ;
struct mapped_device {int queue; } ;


 int QUEUE_FLAG_DISCARD ;
 int blk_queue_flag_clear (int ,int ) ;
 struct queue_limits* dm_get_queue_limits (struct mapped_device*) ;

void disable_discard(struct mapped_device *md)
{
 struct queue_limits *limits = dm_get_queue_limits(md);


 limits->max_discard_sectors = 0;
 blk_queue_flag_clear(QUEUE_FLAG_DISCARD, md->queue);
}
