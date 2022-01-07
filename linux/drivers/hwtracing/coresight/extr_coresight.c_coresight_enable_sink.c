
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct coresight_device {int enable; } ;
struct TYPE_2__ {int (* enable ) (struct coresight_device*,int ,void*) ;} ;


 int EINVAL ;
 TYPE_1__* sink_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*,int ,void*) ;

__attribute__((used)) static int coresight_enable_sink(struct coresight_device *csdev,
     u32 mode, void *data)
{
 int ret;





 if (!sink_ops(csdev)->enable)
  return -EINVAL;

 ret = sink_ops(csdev)->enable(csdev, mode, data);
 if (ret)
  return ret;
 csdev->enable = 1;

 return 0;
}
