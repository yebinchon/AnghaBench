
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* host_exit ) (struct device*) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (struct device*) ;

__attribute__((used)) static inline void intel_gvt_hypervisor_host_exit(struct device *dev)
{

 if (!intel_gvt_host.mpt->host_exit)
  return;

 intel_gvt_host.mpt->host_exit(dev);
}
