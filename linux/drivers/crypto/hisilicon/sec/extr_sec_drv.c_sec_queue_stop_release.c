
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_queue {TYPE_1__* dev_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dev_err (struct device*,char*,int) ;
 int sec_queue_free (struct sec_queue*) ;
 int sec_queue_stop (struct sec_queue*) ;

int sec_queue_stop_release(struct sec_queue *queue)
{
 struct device *dev = queue->dev_info->dev;
 int ret;

 sec_queue_stop(queue);

 ret = sec_queue_free(queue);
 if (ret)
  dev_err(dev, "Releasing queue failed %d\n", ret);

 return ret;
}
