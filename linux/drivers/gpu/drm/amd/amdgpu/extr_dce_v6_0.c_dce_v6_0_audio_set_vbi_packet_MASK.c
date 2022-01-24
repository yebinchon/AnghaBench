#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_GC_CONT ; 
 int /*<<< orphan*/  HDMI_GC_SEND ; 
 int /*<<< orphan*/  HDMI_NULL_SEND ; 
 int /*<<< orphan*/  HDMI_VBI_PACKET_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mmHDMI_VBI_PACKET_CONTROL ; 
 struct amdgpu_encoder* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC3(encoder);
	struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
	u32 tmp;

	tmp = FUNC1(mmHDMI_VBI_PACKET_CONTROL + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_VBI_PACKET_CONTROL, HDMI_NULL_SEND, 1);
	tmp = FUNC0(tmp, HDMI_VBI_PACKET_CONTROL, HDMI_GC_SEND, 1);
	tmp = FUNC0(tmp, HDMI_VBI_PACKET_CONTROL, HDMI_GC_CONT, 1);
	FUNC2(mmHDMI_VBI_PACKET_CONTROL + dig->afmt->offset, tmp);
}