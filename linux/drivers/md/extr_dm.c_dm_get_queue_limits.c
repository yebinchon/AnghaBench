
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_limits {int dummy; } ;
struct mapped_device {TYPE_1__* queue; int holders; } ;
struct TYPE_2__ {struct queue_limits limits; } ;


 int BUG_ON (int) ;
 int atomic_read (int *) ;

struct queue_limits *dm_get_queue_limits(struct mapped_device *md)
{
 BUG_ON(!atomic_read(&md->holders));
 return &md->queue->limits;
}
