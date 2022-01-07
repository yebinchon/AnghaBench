
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attribute_group {int dummy; } ;
struct attribute {int dummy; } ;


 struct attribute** gvt_type_attrs ;
 struct attribute_group** gvt_vgpu_type_groups ;

__attribute__((used)) static bool intel_get_gvt_attrs(struct attribute ***type_attrs,
  struct attribute_group ***intel_vgpu_type_groups)
{
 *type_attrs = gvt_type_attrs;
 *intel_vgpu_type_groups = gvt_vgpu_type_groups;
 return 1;
}
