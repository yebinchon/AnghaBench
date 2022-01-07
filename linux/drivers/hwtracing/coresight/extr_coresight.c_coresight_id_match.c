
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct coresight_device {scalar_t__ type; int enable; } ;
struct TYPE_2__ {int (* trace_id ) (struct coresight_device*) ;} ;


 scalar_t__ CORESIGHT_DEV_TYPE_SOURCE ;
 TYPE_1__* source_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*) ;
 int stub2 (struct coresight_device*) ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static int coresight_id_match(struct device *dev, void *data)
{
 int trace_id, i_trace_id;
 struct coresight_device *csdev, *i_csdev;

 csdev = data;
 i_csdev = to_coresight_device(dev);





 if (i_csdev == csdev || !i_csdev->enable ||
     i_csdev->type != CORESIGHT_DEV_TYPE_SOURCE)
  return 0;


 trace_id = source_ops(csdev)->trace_id(csdev);
 i_trace_id = source_ops(i_csdev)->trace_id(i_csdev);


 if (trace_id == i_trace_id)
  return 1;

 return 0;
}
