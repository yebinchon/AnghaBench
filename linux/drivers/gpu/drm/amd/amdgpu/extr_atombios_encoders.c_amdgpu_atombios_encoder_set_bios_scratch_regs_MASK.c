#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct amdgpu_encoder {int devices; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_connector {int devices; } ;

/* Variables and functions */
 int ATOM_DEVICE_CRT1_SUPPORT ; 
 int ATOM_DEVICE_CRT2_SUPPORT ; 
 int ATOM_DEVICE_DFP1_SUPPORT ; 
 int ATOM_DEVICE_DFP2_SUPPORT ; 
 int ATOM_DEVICE_DFP3_SUPPORT ; 
 int ATOM_DEVICE_DFP4_SUPPORT ; 
 int ATOM_DEVICE_DFP5_SUPPORT ; 
 int ATOM_DEVICE_DFP6_SUPPORT ; 
 int ATOM_DEVICE_LCD1_SUPPORT ; 
 int /*<<< orphan*/  ATOM_S0_CRT1_COLOR ; 
 int /*<<< orphan*/  ATOM_S0_CRT1_MASK ; 
 int /*<<< orphan*/  ATOM_S0_CRT2_COLOR ; 
 int /*<<< orphan*/  ATOM_S0_CRT2_MASK ; 
 int /*<<< orphan*/  ATOM_S0_DFP1 ; 
 int /*<<< orphan*/  ATOM_S0_DFP2 ; 
 int /*<<< orphan*/  ATOM_S0_DFP3 ; 
 int /*<<< orphan*/  ATOM_S0_DFP4 ; 
 int /*<<< orphan*/  ATOM_S0_DFP5 ; 
 int /*<<< orphan*/  ATOM_S0_DFP6 ; 
 int /*<<< orphan*/  ATOM_S0_LCD1 ; 
 int /*<<< orphan*/  ATOM_S3_CRT1_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_CRT2_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_DFP1_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_DFP2_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_DFP3_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_DFP4_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_DFP5_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_DFP6_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S3_LCD1_ACTIVE ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_CRT1 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_CRT2 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_DFP1 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_DFP2 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_DFP3 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_DFP4 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_DFP5 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_DFP6 ; 
 int /*<<< orphan*/  ATOM_S6_ACC_REQ_LCD1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIOS_SCRATCH_0 ; 
 int /*<<< orphan*/  mmBIOS_SCRATCH_3 ; 
 int /*<<< orphan*/  mmBIOS_SCRATCH_6 ; 
 struct amdgpu_connector* FUNC3 (struct drm_connector*) ; 
 struct amdgpu_encoder* FUNC4 (struct drm_encoder*) ; 

void
FUNC5(struct drm_connector *connector,
				       struct drm_encoder *encoder,
				       bool connected)
{
	struct drm_device *dev = connector->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_connector *amdgpu_connector =
	    FUNC3(connector);
	struct amdgpu_encoder *amdgpu_encoder = FUNC4(encoder);
	uint32_t bios_0_scratch, bios_3_scratch, bios_6_scratch;

	bios_0_scratch = FUNC1(mmBIOS_SCRATCH_0);
	bios_3_scratch = FUNC1(mmBIOS_SCRATCH_3);
	bios_6_scratch = FUNC1(mmBIOS_SCRATCH_6);

	if ((amdgpu_encoder->devices & ATOM_DEVICE_LCD1_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_LCD1_SUPPORT)) {
		if (connected) {
			FUNC0("LCD1 connected\n");
			bios_0_scratch |= ATOM_S0_LCD1;
			bios_3_scratch |= ATOM_S3_LCD1_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_LCD1;
		} else {
			FUNC0("LCD1 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_LCD1;
			bios_3_scratch &= ~ATOM_S3_LCD1_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_LCD1;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_CRT1_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_CRT1_SUPPORT)) {
		if (connected) {
			FUNC0("CRT1 connected\n");
			bios_0_scratch |= ATOM_S0_CRT1_COLOR;
			bios_3_scratch |= ATOM_S3_CRT1_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_CRT1;
		} else {
			FUNC0("CRT1 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_CRT1_MASK;
			bios_3_scratch &= ~ATOM_S3_CRT1_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_CRT1;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_CRT2_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_CRT2_SUPPORT)) {
		if (connected) {
			FUNC0("CRT2 connected\n");
			bios_0_scratch |= ATOM_S0_CRT2_COLOR;
			bios_3_scratch |= ATOM_S3_CRT2_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_CRT2;
		} else {
			FUNC0("CRT2 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_CRT2_MASK;
			bios_3_scratch &= ~ATOM_S3_CRT2_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_CRT2;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_DFP1_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_DFP1_SUPPORT)) {
		if (connected) {
			FUNC0("DFP1 connected\n");
			bios_0_scratch |= ATOM_S0_DFP1;
			bios_3_scratch |= ATOM_S3_DFP1_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_DFP1;
		} else {
			FUNC0("DFP1 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_DFP1;
			bios_3_scratch &= ~ATOM_S3_DFP1_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_DFP1;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_DFP2_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_DFP2_SUPPORT)) {
		if (connected) {
			FUNC0("DFP2 connected\n");
			bios_0_scratch |= ATOM_S0_DFP2;
			bios_3_scratch |= ATOM_S3_DFP2_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_DFP2;
		} else {
			FUNC0("DFP2 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_DFP2;
			bios_3_scratch &= ~ATOM_S3_DFP2_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_DFP2;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_DFP3_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_DFP3_SUPPORT)) {
		if (connected) {
			FUNC0("DFP3 connected\n");
			bios_0_scratch |= ATOM_S0_DFP3;
			bios_3_scratch |= ATOM_S3_DFP3_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_DFP3;
		} else {
			FUNC0("DFP3 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_DFP3;
			bios_3_scratch &= ~ATOM_S3_DFP3_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_DFP3;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_DFP4_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_DFP4_SUPPORT)) {
		if (connected) {
			FUNC0("DFP4 connected\n");
			bios_0_scratch |= ATOM_S0_DFP4;
			bios_3_scratch |= ATOM_S3_DFP4_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_DFP4;
		} else {
			FUNC0("DFP4 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_DFP4;
			bios_3_scratch &= ~ATOM_S3_DFP4_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_DFP4;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_DFP5_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_DFP5_SUPPORT)) {
		if (connected) {
			FUNC0("DFP5 connected\n");
			bios_0_scratch |= ATOM_S0_DFP5;
			bios_3_scratch |= ATOM_S3_DFP5_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_DFP5;
		} else {
			FUNC0("DFP5 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_DFP5;
			bios_3_scratch &= ~ATOM_S3_DFP5_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_DFP5;
		}
	}
	if ((amdgpu_encoder->devices & ATOM_DEVICE_DFP6_SUPPORT) &&
	    (amdgpu_connector->devices & ATOM_DEVICE_DFP6_SUPPORT)) {
		if (connected) {
			FUNC0("DFP6 connected\n");
			bios_0_scratch |= ATOM_S0_DFP6;
			bios_3_scratch |= ATOM_S3_DFP6_ACTIVE;
			bios_6_scratch |= ATOM_S6_ACC_REQ_DFP6;
		} else {
			FUNC0("DFP6 disconnected\n");
			bios_0_scratch &= ~ATOM_S0_DFP6;
			bios_3_scratch &= ~ATOM_S3_DFP6_ACTIVE;
			bios_6_scratch &= ~ATOM_S6_ACC_REQ_DFP6;
		}
	}

	FUNC2(mmBIOS_SCRATCH_0, bios_0_scratch);
	FUNC2(mmBIOS_SCRATCH_3, bios_3_scratch);
	FUNC2(mmBIOS_SCRATCH_6, bios_6_scratch);
}