
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_destroy (int ) ;
 int drm_dev_major ;
 int drm_dp_aux_dev_class ;
 int unregister_chrdev (int ,char*) ;

void drm_dp_aux_dev_exit(void)
{
 unregister_chrdev(drm_dev_major, "aux");
 class_destroy(drm_dp_aux_dev_class);
}
