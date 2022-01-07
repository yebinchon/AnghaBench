
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable ) (struct intel_guc*) ;} ;
struct intel_guc {TYPE_1__ interrupts; } ;


 int stub1 (struct intel_guc*) ;

__attribute__((used)) static void guc_enable_interrupts(struct intel_guc *guc)
{
 guc->interrupts.enable(guc);
}
