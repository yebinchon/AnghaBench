
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {scalar_t__ max_write_same_sectors; } ;
struct mapped_device {int dummy; } ;


 struct queue_limits* dm_get_queue_limits (struct mapped_device*) ;

void disable_write_same(struct mapped_device *md)
{
 struct queue_limits *limits = dm_get_queue_limits(md);


 limits->max_write_same_sectors = 0;
}
