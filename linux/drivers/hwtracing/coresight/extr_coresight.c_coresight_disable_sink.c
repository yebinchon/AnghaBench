
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_device {int enable; } ;
struct TYPE_2__ {int (* disable ) (struct coresight_device*) ;} ;


 TYPE_1__* sink_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*) ;

__attribute__((used)) static void coresight_disable_sink(struct coresight_device *csdev)
{
 int ret;

 if (!sink_ops(csdev)->disable)
  return;

 ret = sink_ops(csdev)->disable(csdev);
 if (ret)
  return;
 csdev->enable = 0;
}
