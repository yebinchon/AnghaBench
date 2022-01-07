
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_device {int dummy; } ;
struct TYPE_2__ {int (* trace_id ) (struct coresight_device*) ;} ;


 int bus_for_each_dev (int *,int *,struct coresight_device*,int ) ;
 int coresight_bustype ;
 int coresight_id_match ;
 TYPE_1__* source_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*) ;

__attribute__((used)) static int coresight_source_is_unique(struct coresight_device *csdev)
{
 int trace_id = source_ops(csdev)->trace_id(csdev);


 if (trace_id < 0)
  return 0;

 return !bus_for_each_dev(&coresight_bustype, ((void*)0),
     csdev, coresight_id_match);
}
