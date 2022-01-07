
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int types; } ;


 int kfree (int ) ;

void intel_gvt_clean_vgpu_types(struct intel_gvt *gvt)
{
 kfree(gvt->types);
}
