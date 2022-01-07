
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_output {int composer_enabled; int lock; } ;
struct drm_crtc {int dummy; } ;


 struct vkms_output* drm_crtc_to_vkms_output (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vkms_crc_parse_source (char const*,int*) ;

int vkms_set_crc_source(struct drm_crtc *crtc, const char *src_name)
{
 struct vkms_output *out = drm_crtc_to_vkms_output(crtc);
 bool enabled = 0;
 int ret = 0;

 ret = vkms_crc_parse_source(src_name, &enabled);

 spin_lock_irq(&out->lock);
 out->composer_enabled = enabled;
 spin_unlock_irq(&out->lock);

 return ret;
}
