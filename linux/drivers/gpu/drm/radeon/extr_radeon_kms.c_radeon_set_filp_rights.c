
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mutex; } ;
struct radeon_device {TYPE_1__ gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void radeon_set_filp_rights(struct drm_device *dev,
       struct drm_file **owner,
       struct drm_file *applier,
       uint32_t *value)
{
 struct radeon_device *rdev = dev->dev_private;

 mutex_lock(&rdev->gem.mutex);
 if (*value == 1) {

  if (!*owner)
   *owner = applier;
 } else if (*value == 0) {

  if (*owner == applier)
   *owner = ((void*)0);
 }
 *value = *owner == applier ? 1 : 0;
 mutex_unlock(&rdev->gem.mutex);
}
