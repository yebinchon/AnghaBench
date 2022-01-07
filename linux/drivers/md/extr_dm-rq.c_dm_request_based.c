
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int queue; } ;


 int queue_is_mq (int ) ;

int dm_request_based(struct mapped_device *md)
{
 return queue_is_mq(md->queue);
}
