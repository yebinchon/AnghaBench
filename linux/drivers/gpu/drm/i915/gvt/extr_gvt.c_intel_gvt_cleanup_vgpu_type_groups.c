
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int num_types; } ;
struct attribute_group {int dummy; } ;


 struct attribute_group** gvt_vgpu_type_groups ;
 int kfree (struct attribute_group*) ;

__attribute__((used)) static void intel_gvt_cleanup_vgpu_type_groups(struct intel_gvt *gvt)
{
 int i;
 struct attribute_group *group;

 for (i = 0; i < gvt->num_types; i++) {
  group = gvt_vgpu_type_groups[i];
  gvt_vgpu_type_groups[i] = ((void*)0);
  kfree(group);
 }
}
