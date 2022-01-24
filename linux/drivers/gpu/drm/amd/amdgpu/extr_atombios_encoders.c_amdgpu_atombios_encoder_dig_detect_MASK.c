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
typedef  int u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int /*<<< orphan*/  devices; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_connector {int devices; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int ATOM_DEVICE_CRT1_SUPPORT ; 
 int ATOM_DEVICE_CRT2_SUPPORT ; 
 int ATOM_DEVICE_CRT_SUPPORT ; 
 int ATOM_DEVICE_CV_SUPPORT ; 
 int ATOM_DEVICE_TV1_SUPPORT ; 
 int ATOM_S0_CRT1_MASK ; 
 int ATOM_S0_CRT2_MASK ; 
 int ATOM_S0_CV_MASK ; 
 int ATOM_S0_CV_MASK_A ; 
 int ATOM_S0_TV1_COMPOSITE ; 
 int ATOM_S0_TV1_COMPOSITE_A ; 
 int ATOM_S0_TV1_SVIDEO ; 
 int ATOM_S0_TV1_SVIDEO_A ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,struct drm_encoder*,int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC3 (struct drm_encoder*) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 int /*<<< orphan*/  mmBIOS_SCRATCH_0 ; 
 struct amdgpu_connector* FUNC4 (struct drm_connector*) ; 
 struct amdgpu_encoder* FUNC5 (struct drm_encoder*) ; 

enum drm_connector_status
FUNC6(struct drm_encoder *encoder,
			    struct drm_connector *connector)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC5(encoder);
	struct amdgpu_connector *amdgpu_connector = FUNC4(connector);
	struct drm_encoder *ext_encoder = FUNC3(encoder);
	u32 bios_0_scratch;

	if (!ext_encoder)
		return connector_status_unknown;

	if ((amdgpu_connector->devices & ATOM_DEVICE_CRT_SUPPORT) == 0)
		return connector_status_unknown;

	/* load detect on the dp bridge */
	FUNC2(encoder, ext_encoder,
						EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION);

	bios_0_scratch = FUNC1(mmBIOS_SCRATCH_0);

	FUNC0("Bios 0 scratch %x %08x\n", bios_0_scratch, amdgpu_encoder->devices);
	if (amdgpu_connector->devices & ATOM_DEVICE_CRT1_SUPPORT) {
		if (bios_0_scratch & ATOM_S0_CRT1_MASK)
			return connector_status_connected;
	}
	if (amdgpu_connector->devices & ATOM_DEVICE_CRT2_SUPPORT) {
		if (bios_0_scratch & ATOM_S0_CRT2_MASK)
			return connector_status_connected;
	}
	if (amdgpu_connector->devices & ATOM_DEVICE_CV_SUPPORT) {
		if (bios_0_scratch & (ATOM_S0_CV_MASK|ATOM_S0_CV_MASK_A))
			return connector_status_connected;
	}
	if (amdgpu_connector->devices & ATOM_DEVICE_TV1_SUPPORT) {
		if (bios_0_scratch & (ATOM_S0_TV1_COMPOSITE | ATOM_S0_TV1_COMPOSITE_A))
			return connector_status_connected; /* CTV */
		else if (bios_0_scratch & (ATOM_S0_TV1_SVIDEO | ATOM_S0_TV1_SVIDEO_A))
			return connector_status_connected; /* STV */
	}
	return connector_status_disconnected;
}