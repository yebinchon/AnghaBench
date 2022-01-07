
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* host_init ) (struct device*,void*,void const*) ;} ;


 int ENODEV ;
 TYPE_2__ intel_gvt_host ;
 int stub1 (struct device*,void*,void const*) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_host_init(struct device *dev,
       void *gvt, const void *ops)
{
 if (!intel_gvt_host.mpt->host_init)
  return -ENODEV;

 return intel_gvt_host.mpt->host_init(dev, gvt, ops);
}
