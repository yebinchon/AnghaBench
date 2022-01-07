
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_vblank_crtc {int time; int count; int seqlock; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;
typedef int ktime_t ;


 scalar_t__ WARN_ON (int) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

__attribute__((used)) static u64 drm_vblank_count_and_time(struct drm_device *dev, unsigned int pipe,
         ktime_t *vblanktime)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 u64 vblank_count;
 unsigned int seq;

 if (WARN_ON(pipe >= dev->num_crtcs)) {
  *vblanktime = 0;
  return 0;
 }

 do {
  seq = read_seqbegin(&vblank->seqlock);
  vblank_count = vblank->count;
  *vblanktime = vblank->time;
 } while (read_seqretry(&vblank->seqlock, seq));

 return vblank_count;
}
