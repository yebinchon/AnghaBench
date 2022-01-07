
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_th_device {scalar_t__ type; } ;
struct TYPE_2__ {struct intel_th_device* hub; } ;


 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ INTEL_TH_SWITCH ;
 TYPE_1__* to_intel_th (struct intel_th_device*) ;
 struct intel_th_device* to_intel_th_parent (struct intel_th_device*) ;

__attribute__((used)) static inline struct intel_th_device *
to_intel_th_hub(struct intel_th_device *thdev)
{
 if (thdev->type == INTEL_TH_SWITCH)
  return thdev;
 else if (thdev->type == INTEL_TH_OUTPUT)
  return to_intel_th_parent(thdev);

 return to_intel_th(thdev)->hub;
}
