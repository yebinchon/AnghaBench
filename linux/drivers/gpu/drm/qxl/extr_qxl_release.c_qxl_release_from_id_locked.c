
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct qxl_release {int dummy; } ;
struct qxl_device {int release_idr_lock; int release_idr; } ;


 int DRM_ERROR (char*) ;
 struct qxl_release* idr_find (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct qxl_release *qxl_release_from_id_locked(struct qxl_device *qdev,
         uint64_t id)
{
 struct qxl_release *release;

 spin_lock(&qdev->release_idr_lock);
 release = idr_find(&qdev->release_idr, id);
 spin_unlock(&qdev->release_idr_lock);
 if (!release) {
  DRM_ERROR("failed to find id in release_idr\n");
  return ((void*)0);
 }

 return release;
}
