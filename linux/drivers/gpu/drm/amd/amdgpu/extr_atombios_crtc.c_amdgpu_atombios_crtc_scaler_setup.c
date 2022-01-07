
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct amdgpu_crtc {int rmx_type; int crtc_id; } ;
typedef int args ;
struct TYPE_5__ {void* ucEnable; int ucScaler; } ;
typedef TYPE_2__ ENABLE_SCALER_PS_ALLOCATION ;


 void* ATOM_SCALER_CENTER ;
 void* ATOM_SCALER_DISABLE ;
 void* ATOM_SCALER_EXPANSION ;
 int COMMAND ;
 int EnableScaler ;
 int GetIndexIntoMasterTable (int ,int ) ;



 int amdgpu_atom_execute_table (int ,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

void amdgpu_atombios_crtc_scaler_setup(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 ENABLE_SCALER_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, EnableScaler);

 memset(&args, 0, sizeof(args));

 args.ucScaler = amdgpu_crtc->crtc_id;

 switch (amdgpu_crtc->rmx_type) {
 case 128:
  args.ucEnable = ATOM_SCALER_EXPANSION;
  break;
 case 129:
  args.ucEnable = ATOM_SCALER_CENTER;
  break;
 case 130:
  args.ucEnable = ATOM_SCALER_EXPANSION;
  break;
 default:
  args.ucEnable = ATOM_SCALER_DISABLE;
  break;
 }
 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
