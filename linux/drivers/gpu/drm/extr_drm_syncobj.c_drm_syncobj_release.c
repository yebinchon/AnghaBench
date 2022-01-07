
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int syncobj_idr; } ;


 int drm_syncobj_release_handle ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int *,struct drm_file*) ;

void
drm_syncobj_release(struct drm_file *file_private)
{
 idr_for_each(&file_private->syncobj_idr,
       &drm_syncobj_release_handle, file_private);
 idr_destroy(&file_private->syncobj_idr);
}
