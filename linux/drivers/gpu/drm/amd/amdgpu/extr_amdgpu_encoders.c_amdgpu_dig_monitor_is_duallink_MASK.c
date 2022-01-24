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
struct drm_encoder {int dummy; } ;
struct drm_connector {int connector_type; } ;
struct amdgpu_connector_atom_dig {int /*<<< orphan*/  dp_sink_type; } ;
struct amdgpu_connector {struct amdgpu_connector_atom_dig* con_priv; int /*<<< orphan*/  use_digital; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_eDP ; 
#define  DRM_MODE_CONNECTOR_DVID 132 
#define  DRM_MODE_CONNECTOR_DVII 131 
#define  DRM_MODE_CONNECTOR_DisplayPort 130 
#define  DRM_MODE_CONNECTOR_HDMIA 129 
#define  DRM_MODE_CONNECTOR_HDMIB 128 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 struct drm_connector* FUNC1 (struct drm_encoder*) ; 
 struct drm_connector* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct amdgpu_connector* FUNC4 (struct drm_connector*) ; 

bool FUNC5(struct drm_encoder *encoder,
				    u32 pixel_clock)
{
	struct drm_connector *connector;
	struct amdgpu_connector *amdgpu_connector;
	struct amdgpu_connector_atom_dig *dig_connector;

	connector = FUNC1(encoder);
	/* if we don't have an active device yet, just use one of
	 * the connectors tied to the encoder.
	 */
	if (!connector)
		connector = FUNC2(encoder);
	amdgpu_connector = FUNC4(connector);

	switch (connector->connector_type) {
	case DRM_MODE_CONNECTOR_DVII:
	case DRM_MODE_CONNECTOR_HDMIB:
		if (amdgpu_connector->use_digital) {
			/* HDMI 1.3 supports up to 340 Mhz over single link */
			if (FUNC3(FUNC0(connector))) {
				if (pixel_clock > 340000)
					return true;
				else
					return false;
			} else {
				if (pixel_clock > 165000)
					return true;
				else
					return false;
			}
		} else
			return false;
	case DRM_MODE_CONNECTOR_DVID:
	case DRM_MODE_CONNECTOR_HDMIA:
	case DRM_MODE_CONNECTOR_DisplayPort:
		dig_connector = amdgpu_connector->con_priv;
		if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
		    (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP))
			return false;
		else {
			/* HDMI 1.3 supports up to 340 Mhz over single link */
			if (FUNC3(FUNC0(connector))) {
				if (pixel_clock > 340000)
					return true;
				else
					return false;
			} else {
				if (pixel_clock > 165000)
					return true;
				else
					return false;
			}
		}
	default:
		return false;
	}
}