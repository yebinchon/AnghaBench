
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_queue {int regs; int queue_id; TYPE_1__* dev_info; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 int dev_err (struct device*,char*,int ) ;
 int ioremap (int ,int ) ;
 struct resource* platform_get_resource (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int sec_queue_map_io(struct sec_queue *queue)
{
 struct device *dev = queue->dev_info->dev;
 struct resource *res;

 res = platform_get_resource(to_platform_device(dev),
        IORESOURCE_MEM,
        2 + queue->queue_id);
 if (!res) {
  dev_err(dev, "Failed to get queue %d memory resource\n",
   queue->queue_id);
  return -ENOMEM;
 }
 queue->regs = ioremap(res->start, resource_size(res));
 if (!queue->regs)
  return -ENOMEM;

 return 0;
}
