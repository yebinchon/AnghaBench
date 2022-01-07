
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int attr; } ;
struct TYPE_9__ {int devnode; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 TYPE_6__ class_attr_version ;
 TYPE_1__* class_create (int ,char*) ;
 int class_create_file (TYPE_1__*,int *) ;
 int class_destroy (TYPE_1__*) ;
 TYPE_1__* drm_class ;
 int drm_devnode ;
 int drm_setup_hdcp_srm (TYPE_1__*) ;

int drm_sysfs_init(void)
{
 int err;

 drm_class = class_create(THIS_MODULE, "drm");
 if (IS_ERR(drm_class))
  return PTR_ERR(drm_class);

 err = class_create_file(drm_class, &class_attr_version.attr);
 if (err) {
  class_destroy(drm_class);
  drm_class = ((void*)0);
  return err;
 }

 drm_class->devnode = drm_devnode;
 drm_setup_hdcp_srm(drm_class);
 return 0;
}
