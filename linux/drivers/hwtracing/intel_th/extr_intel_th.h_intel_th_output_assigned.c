
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; scalar_t__ type; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ output; } ;


 scalar_t__ GTH_NONE ;
 scalar_t__ INTEL_TH_OUTPUT ;

__attribute__((used)) static inline bool
intel_th_output_assigned(struct intel_th_device *thdev)
{
 return thdev->type == INTEL_TH_OUTPUT &&
  (thdev->output.port >= 0 ||
   thdev->output.type == GTH_NONE);
}
