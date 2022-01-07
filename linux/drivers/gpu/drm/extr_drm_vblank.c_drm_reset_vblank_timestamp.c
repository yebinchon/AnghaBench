
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_device {int vblank_time_lock; } ;
typedef scalar_t__ ktime_t ;


 int DRM_TIMESTAMP_MAXRETRIES ;
 scalar_t__ __get_vblank_counter (struct drm_device*,unsigned int) ;
 int drm_get_last_vbltimestamp (struct drm_device*,unsigned int,scalar_t__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int store_vblank (struct drm_device*,unsigned int,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void drm_reset_vblank_timestamp(struct drm_device *dev, unsigned int pipe)
{
 u32 cur_vblank;
 bool rc;
 ktime_t t_vblank;
 int count = DRM_TIMESTAMP_MAXRETRIES;

 spin_lock(&dev->vblank_time_lock);





 do {
  cur_vblank = __get_vblank_counter(dev, pipe);
  rc = drm_get_last_vbltimestamp(dev, pipe, &t_vblank, 0);
 } while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);






 if (!rc)
  t_vblank = 0;





 store_vblank(dev, pipe, 1, t_vblank, cur_vblank);

 spin_unlock(&dev->vblank_time_lock);
}
