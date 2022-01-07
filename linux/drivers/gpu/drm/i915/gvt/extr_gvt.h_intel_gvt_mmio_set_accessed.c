
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mmio_attribute; } ;
struct intel_gvt {TYPE_1__ mmio; } ;


 int F_ACCESSED ;

__attribute__((used)) static inline void intel_gvt_mmio_set_accessed(
   struct intel_gvt *gvt, unsigned int offset)
{
 gvt->mmio.mmio_attribute[offset >> 2] |= F_ACCESSED;
}
