
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_device {int enable; int refcnt; } ;
struct TYPE_2__ {int (* disable ) (struct coresight_device*,int *) ;} ;


 scalar_t__ atomic_dec_return (int ) ;
 TYPE_1__* source_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*,int *) ;

__attribute__((used)) static bool coresight_disable_source(struct coresight_device *csdev)
{
 if (atomic_dec_return(csdev->refcnt) == 0) {
  if (source_ops(csdev)->disable)
   source_ops(csdev)->disable(csdev, ((void*)0));
  csdev->enable = 0;
 }
 return !csdev->enable;
}
