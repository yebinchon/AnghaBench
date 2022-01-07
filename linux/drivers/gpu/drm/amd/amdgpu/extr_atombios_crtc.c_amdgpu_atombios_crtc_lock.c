
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
struct amdgpu_crtc {int crtc_id; } ;
typedef int args ;
struct TYPE_5__ {int ucEnable; int ucCRTC; } ;
typedef TYPE_2__ ENABLE_CRTC_PS_ALLOCATION ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int UpdateCRTC_DoubleBufferRegisters ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

void amdgpu_atombios_crtc_lock(struct drm_crtc *crtc, int lock)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 int index =
     GetIndexIntoMasterTable(COMMAND, UpdateCRTC_DoubleBufferRegisters);
 ENABLE_CRTC_PS_ALLOCATION args;

 memset(&args, 0, sizeof(args));

 args.ucCRTC = amdgpu_crtc->crtc_id;
 args.ucEnable = lock;

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
