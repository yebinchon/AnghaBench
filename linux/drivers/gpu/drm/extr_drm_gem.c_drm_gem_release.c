
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int object_idr; } ;
struct drm_device {int dummy; } ;


 int drm_gem_object_release_handle ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int *,struct drm_file*) ;

void
drm_gem_release(struct drm_device *dev, struct drm_file *file_private)
{
 idr_for_each(&file_private->object_idr,
       &drm_gem_object_release_handle, file_private);
 idr_destroy(&file_private->object_idr);
}
