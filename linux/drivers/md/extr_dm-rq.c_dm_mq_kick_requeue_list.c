
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int __dm_mq_kick_requeue_list (int ,int ) ;
 int dm_get_md_queue (struct mapped_device*) ;

void dm_mq_kick_requeue_list(struct mapped_device *md)
{
 __dm_mq_kick_requeue_list(dm_get_md_queue(md), 0);
}
