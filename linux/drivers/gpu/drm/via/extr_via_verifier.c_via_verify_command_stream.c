
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int verifier_state_t ;
typedef int uint32_t ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_4__ {int agp; int const* buf_start; int * map_cache; int unfinished; struct drm_device* dev; } ;
typedef TYPE_1__ drm_via_state_t ;
struct TYPE_5__ {scalar_t__ chipset; scalar_t__ num_fire_offsets; TYPE_1__ hc_state; } ;
typedef TYPE_2__ drm_via_private_t ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int HALCYON_HEADER1 ;
 int HALCYON_HEADER1MASK ;
 int HALCYON_HEADER2 ;
 scalar_t__ VIA_DX9_0 ;
 scalar_t__ VIA_PRO_GROUP_A ;
 int VIA_VIDEOMASK ;
 int VIA_VIDEO_HEADER5 ;
 int VIA_VIDEO_HEADER6 ;
 int no_sequence ;






 int via_check_header1 (int const**,int const*) ;
 int via_check_header2 (int const**,int const*,TYPE_1__*) ;
 int via_check_vheader5 (int const**,int const*) ;
 int via_check_vheader6 (int const**,int const*) ;

int
via_verify_command_stream(const uint32_t * buf, unsigned int size,
     struct drm_device * dev, int agp)
{

 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 drm_via_state_t *hc_state = &dev_priv->hc_state;
 drm_via_state_t saved_state = *hc_state;
 uint32_t cmd;
 const uint32_t *buf_end = buf + (size >> 2);
 verifier_state_t state = 133;
 int cme_video;
 int supported_3d;

 cme_video = (dev_priv->chipset == VIA_PRO_GROUP_A ||
       dev_priv->chipset == VIA_DX9_0);

 supported_3d = dev_priv->chipset != VIA_DX9_0;

 hc_state->dev = dev;
 hc_state->unfinished = no_sequence;
 hc_state->map_cache = ((void*)0);
 hc_state->agp = agp;
 hc_state->buf_start = buf;
 dev_priv->num_fire_offsets = 0;

 while (buf < buf_end) {

  switch (state) {
  case 130:
   state = via_check_header2(&buf, buf_end, hc_state);
   break;
  case 131:
   state = via_check_header1(&buf, buf_end);
   break;
  case 129:
   state = via_check_vheader5(&buf, buf_end);
   break;
  case 128:
   state = via_check_vheader6(&buf, buf_end);
   break;
  case 133:
   if ((HALCYON_HEADER2 == (cmd = *buf)) &&
       supported_3d)
    state = 130;
   else if ((cmd & HALCYON_HEADER1MASK) == HALCYON_HEADER1)
    state = 131;
   else if (cme_video
     && (cmd & VIA_VIDEOMASK) == VIA_VIDEO_HEADER5)
    state = 129;
   else if (cme_video
     && (cmd & VIA_VIDEOMASK) == VIA_VIDEO_HEADER6)
    state = 128;
   else if ((cmd == HALCYON_HEADER2) && !supported_3d) {
    DRM_ERROR("Accelerated 3D is not supported on this chipset yet.\n");
    state = 132;
   } else {
    DRM_ERROR
        ("Invalid / Unimplemented DMA HEADER command. 0x%x\n",
         cmd);
    state = 132;
   }
   break;
  case 132:
  default:
   *hc_state = saved_state;
   return -EINVAL;
  }
 }
 if (state == 132) {
  *hc_state = saved_state;
  return -EINVAL;
 }
 return 0;
}
