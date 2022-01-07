
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opregion_acpi {scalar_t__ csts; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {struct opregion_acpi* acpi; } ;


 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 TYPE_1__* system_opregion ;

__attribute__((used)) static int psb_intel_opregion_video_event(struct notifier_block *nb,
       unsigned long val, void *data)
{







 struct opregion_acpi *acpi;

 if (!system_opregion)
  return NOTIFY_DONE;

 acpi = system_opregion->acpi;
 acpi->csts = 0;

 return NOTIFY_OK;
}
