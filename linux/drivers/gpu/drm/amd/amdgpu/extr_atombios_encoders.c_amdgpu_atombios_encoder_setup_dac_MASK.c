#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder {int encoder_id; int pixel_clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_5__ {int ucAction; int /*<<< orphan*/  usPixelClock; int /*<<< orphan*/  ucDacStandard; } ;
typedef  TYPE_2__ DAC_ENCODER_CONTROL_PS_ALLOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_DAC1_PS2 ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  DAC1EncoderControl ; 
 int /*<<< orphan*/  DAC2EncoderControl ; 
#define  ENCODER_OBJECT_ID_INTERNAL_DAC1 131 
#define  ENCODER_OBJECT_ID_INTERNAL_DAC2 130 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 129 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct amdgpu_encoder* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC5(struct drm_encoder *encoder, int action)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC4(encoder);
	DAC_ENCODER_CONTROL_PS_ALLOCATION args;
	int index = 0;

	FUNC3(&args, 0, sizeof(args));

	switch (amdgpu_encoder->encoder_id) {
	case ENCODER_OBJECT_ID_INTERNAL_DAC1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1:
		index = FUNC0(COMMAND, DAC1EncoderControl);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_DAC2:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2:
		index = FUNC0(COMMAND, DAC2EncoderControl);
		break;
	}

	args.ucAction = action;
	args.ucDacStandard = ATOM_DAC1_PS2;
	args.usPixelClock = FUNC2(amdgpu_encoder->pixel_clock / 10);

	FUNC1(adev->mode_info.atom_context, index, (uint32_t *)&args);

}