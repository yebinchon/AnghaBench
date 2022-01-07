
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ dev; } ;
struct intel_th {int dummy; } ;


 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct intel_th* dev_get_drvdata (int ) ;
 struct intel_th_device* to_intel_th_parent (struct intel_th_device*) ;

__attribute__((used)) static inline struct intel_th *to_intel_th(struct intel_th_device *thdev)
{
 if (thdev->type == INTEL_TH_OUTPUT)
  thdev = to_intel_th_parent(thdev);

 if (WARN_ON_ONCE(!thdev || thdev->type == INTEL_TH_OUTPUT))
  return ((void*)0);

 return dev_get_drvdata(thdev->dev.parent);
}
