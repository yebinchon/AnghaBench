
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int queue; } ;


 int blk_mq_queue_inflight (int ) ;
 int md_in_flight_bios (struct mapped_device*) ;
 scalar_t__ queue_is_mq (int ) ;

__attribute__((used)) static bool md_in_flight(struct mapped_device *md)
{
 if (queue_is_mq(md->queue))
  return blk_mq_queue_inflight(md->queue);
 else
  return md_in_flight_bios(md);
}
