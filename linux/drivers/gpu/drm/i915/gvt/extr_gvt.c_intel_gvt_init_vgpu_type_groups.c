
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_type {int name; } ;
struct intel_gvt {int num_types; struct intel_vgpu_type* types; } ;
struct attribute_group {int attrs; int name; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int gvt_type_attrs ;
 struct attribute_group** gvt_vgpu_type_groups ;
 int kfree (struct attribute_group*) ;
 struct attribute_group* kzalloc (int,int ) ;

__attribute__((used)) static bool intel_gvt_init_vgpu_type_groups(struct intel_gvt *gvt)
{
 int i, j;
 struct intel_vgpu_type *type;
 struct attribute_group *group;

 for (i = 0; i < gvt->num_types; i++) {
  type = &gvt->types[i];

  group = kzalloc(sizeof(struct attribute_group), GFP_KERNEL);
  if (WARN_ON(!group))
   goto unwind;

  group->name = type->name;
  group->attrs = gvt_type_attrs;
  gvt_vgpu_type_groups[i] = group;
 }

 return 1;

unwind:
 for (j = 0; j < i; j++) {
  group = gvt_vgpu_type_groups[j];
  kfree(group);
 }

 return 0;
}
