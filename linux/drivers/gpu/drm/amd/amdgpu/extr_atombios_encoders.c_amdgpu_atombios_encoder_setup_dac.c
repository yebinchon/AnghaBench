
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder {int encoder_id; int pixel_clock; } ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int args ;
struct TYPE_5__ {int ucAction; int usPixelClock; int ucDacStandard; } ;
typedef TYPE_2__ DAC_ENCODER_CONTROL_PS_ALLOCATION ;


 int ATOM_DAC1_PS2 ;
 int COMMAND ;
 int DAC1EncoderControl ;
 int DAC2EncoderControl ;




 int GetIndexIntoMasterTable (int ,int ) ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int cpu_to_le16 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
amdgpu_atombios_encoder_setup_dac(struct drm_encoder *encoder, int action)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 DAC_ENCODER_CONTROL_PS_ALLOCATION args;
 int index = 0;

 memset(&args, 0, sizeof(args));

 switch (amdgpu_encoder->encoder_id) {
 case 131:
 case 129:
  index = GetIndexIntoMasterTable(COMMAND, DAC1EncoderControl);
  break;
 case 130:
 case 128:
  index = GetIndexIntoMasterTable(COMMAND, DAC2EncoderControl);
  break;
 }

 args.ucAction = action;
 args.ucDacStandard = ATOM_DAC1_PS2;
 args.usPixelClock = cpu_to_le16(amdgpu_encoder->pixel_clock / 10);

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);

}
