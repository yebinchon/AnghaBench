
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr; } ;


 scalar_t__ IS_ERR_OR_NULL (int *) ;
 TYPE_1__ class_attr_version ;
 int class_destroy (int *) ;
 int class_remove_file (int *,int *) ;
 int * drm_class ;
 int drm_teardown_hdcp_srm (int *) ;

void drm_sysfs_destroy(void)
{
 if (IS_ERR_OR_NULL(drm_class))
  return;
 drm_teardown_hdcp_srm(drm_class);
 class_remove_file(drm_class, &class_attr_version.attr);
 class_destroy(drm_class);
 drm_class = ((void*)0);
}
