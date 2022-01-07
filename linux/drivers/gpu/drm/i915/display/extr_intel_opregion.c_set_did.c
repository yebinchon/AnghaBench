
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct intel_opregion {TYPE_1__* acpi; } ;
struct TYPE_2__ {void** did2; void** didl; } ;


 int ARRAY_SIZE (void**) ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void set_did(struct intel_opregion *opregion, int i, u32 val)
{
 if (i < ARRAY_SIZE(opregion->acpi->didl)) {
  opregion->acpi->didl[i] = val;
 } else {
  i -= ARRAY_SIZE(opregion->acpi->didl);

  if (WARN_ON(i >= ARRAY_SIZE(opregion->acpi->did2)))
   return;

  opregion->acpi->did2[i] = val;
 }
}
