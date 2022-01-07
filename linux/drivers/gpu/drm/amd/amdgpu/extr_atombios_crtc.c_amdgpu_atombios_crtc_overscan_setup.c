
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_display_mode {int crtc_vdisplay; int crtc_hdisplay; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct amdgpu_crtc {int rmx_type; int h_border; int v_border; int crtc_id; } ;
typedef int args ;
struct TYPE_5__ {void* usOverscanTop; void* usOverscanBottom; void* usOverscanLeft; void* usOverscanRight; int ucCRTC; } ;
typedef TYPE_2__ SET_CRTC_OVERSCAN_PS_ALLOCATION ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;



 int SetCRTC_OverScan ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 void* cpu_to_le16 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

void amdgpu_atombios_crtc_overscan_setup(struct drm_crtc *crtc,
      struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode)
{
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 SET_CRTC_OVERSCAN_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, SetCRTC_OverScan);
 int a1, a2;

 memset(&args, 0, sizeof(args));

 args.ucCRTC = amdgpu_crtc->crtc_id;

 switch (amdgpu_crtc->rmx_type) {
 case 129:
  args.usOverscanTop = cpu_to_le16((adjusted_mode->crtc_vdisplay - mode->crtc_vdisplay) / 2);
  args.usOverscanBottom = cpu_to_le16((adjusted_mode->crtc_vdisplay - mode->crtc_vdisplay) / 2);
  args.usOverscanLeft = cpu_to_le16((adjusted_mode->crtc_hdisplay - mode->crtc_hdisplay) / 2);
  args.usOverscanRight = cpu_to_le16((adjusted_mode->crtc_hdisplay - mode->crtc_hdisplay) / 2);
  break;
 case 130:
  a1 = mode->crtc_vdisplay * adjusted_mode->crtc_hdisplay;
  a2 = adjusted_mode->crtc_vdisplay * mode->crtc_hdisplay;

  if (a1 > a2) {
   args.usOverscanLeft = cpu_to_le16((adjusted_mode->crtc_hdisplay - (a2 / mode->crtc_vdisplay)) / 2);
   args.usOverscanRight = cpu_to_le16((adjusted_mode->crtc_hdisplay - (a2 / mode->crtc_vdisplay)) / 2);
  } else if (a2 > a1) {
   args.usOverscanTop = cpu_to_le16((adjusted_mode->crtc_vdisplay - (a1 / mode->crtc_hdisplay)) / 2);
   args.usOverscanBottom = cpu_to_le16((adjusted_mode->crtc_vdisplay - (a1 / mode->crtc_hdisplay)) / 2);
  }
  break;
 case 128:
 default:
  args.usOverscanRight = cpu_to_le16(amdgpu_crtc->h_border);
  args.usOverscanLeft = cpu_to_le16(amdgpu_crtc->h_border);
  args.usOverscanBottom = cpu_to_le16(amdgpu_crtc->v_border);
  args.usOverscanTop = cpu_to_le16(amdgpu_crtc->v_border);
  break;
 }
 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
