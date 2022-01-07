
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct intel_th_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 struct intel_th_device* to_intel_th_device (struct device*) ;

__attribute__((used)) static inline struct intel_th_device *
to_intel_th_parent(struct intel_th_device *thdev)
{
 struct device *parent = thdev->dev.parent;

 if (!parent)
  return ((void*)0);

 return to_intel_th_device(parent);
}
