
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct intel_vgpu_type {int fence; int weight; int resolution; int high_gm_size; int low_gm_size; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {void* gvt; } ;


 int BYTES_TO_MB (int ) ;
 struct intel_vgpu_type* intel_gvt_find_vgpu_type (void*,int ) ;
 TYPE_1__* kdev_to_i915 (struct device*) ;
 int kobject_name (struct kobject*) ;
 int sprintf (char*,char*,int,int,int,char*,int) ;
 char* vgpu_edid_str (int ) ;

__attribute__((used)) static ssize_t description_show(struct kobject *kobj, struct device *dev,
  char *buf)
{
 struct intel_vgpu_type *type;
 void *gvt = kdev_to_i915(dev)->gvt;

 type = intel_gvt_find_vgpu_type(gvt, kobject_name(kobj));
 if (!type)
  return 0;

 return sprintf(buf, "low_gm_size: %dMB\nhigh_gm_size: %dMB\n"
         "fence: %d\nresolution: %s\n"
         "weight: %d\n",
         BYTES_TO_MB(type->low_gm_size),
         BYTES_TO_MB(type->high_gm_size),
         type->fence, vgpu_edid_str(type->resolution),
         type->weight);
}
