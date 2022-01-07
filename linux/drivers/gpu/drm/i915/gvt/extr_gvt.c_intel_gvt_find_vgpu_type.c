
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_vgpu_type {int name; } ;
struct intel_gvt {int num_types; struct intel_vgpu_type* types; TYPE_3__* dev_priv; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__ drm; } ;
struct TYPE_4__ {int dev; } ;


 char* dev_driver_string (int *) ;
 int strlen (char const*) ;
 int strncmp (int ,char const*,int) ;

__attribute__((used)) static struct intel_vgpu_type *intel_gvt_find_vgpu_type(struct intel_gvt *gvt,
  const char *name)
{
 int i;
 struct intel_vgpu_type *t;
 const char *driver_name = dev_driver_string(
   &gvt->dev_priv->drm.pdev->dev);

 for (i = 0; i < gvt->num_types; i++) {
  t = &gvt->types[i];
  if (!strncmp(t->name, name + strlen(driver_name) + 1,
   sizeof(t->name)))
   return t;
 }

 return ((void*)0);
}
