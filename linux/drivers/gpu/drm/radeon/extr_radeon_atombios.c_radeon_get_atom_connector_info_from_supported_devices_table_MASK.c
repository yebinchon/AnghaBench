#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_5__* asIntSrcInfo; } ;
struct TYPE_14__ {TYPE_7__* asConnInfo; int /*<<< orphan*/  usDeviceSupport; } ;
union atom_supported_devices {TYPE_6__ info_2d1; TYPE_1__ info; } ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int u8 ;
struct radeon_router {int ddc_valid; int cd_valid; } ;
struct radeon_mode_info {struct atom_context* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_13__ {void* hpd; } ;
struct TYPE_21__ {int valid; } ;
struct bios_connector {int valid; int line_mux; int devices; TYPE_10__ hpd; TYPE_8__ ddc_bus; scalar_t__ connector_type; } ;
struct atom_context {int bios; } ;
struct TYPE_17__ {int ucAccess; } ;
struct TYPE_15__ {size_t bfConnectorType; int bfAssociatedDAC; } ;
struct TYPE_16__ {TYPE_2__ sbfAccess; } ;
struct TYPE_20__ {TYPE_4__ sucI2cId; TYPE_3__ sucConnectorInfo; } ;
struct TYPE_18__ {int ucIntSrcBitmap; } ;
typedef  TYPE_7__ ATOM_CONNECTOR_INFO_I2C ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int ATOM_DEVICE_CRT1_INDEX ; 
 int ATOM_DEVICE_CRT2_INDEX ; 
 int ATOM_DEVICE_CRT_SUPPORT ; 
 int ATOM_DEVICE_CV_INDEX ; 
 int ATOM_DEVICE_DFP1_INDEX ; 
 int ATOM_DEVICE_DFP2_INDEX ; 
 int ATOM_DEVICE_DFP_SUPPORT ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int ATOM_DEVICE_TV1_INDEX ; 
 int ATOM_DEVICE_TV2_INDEX ; 
 int ATOM_MAX_SUPPORTED_DEVICE ; 
 int ATOM_MAX_SUPPORTED_DEVICE_INFO ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ DRM_MODE_CONNECTOR_DVII ; 
 scalar_t__ DRM_MODE_CONNECTOR_Unknown ; 
 scalar_t__ DRM_MODE_CONNECTOR_VGA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* RADEON_HPD_1 ; 
 void* RADEON_HPD_2 ; 
 void* RADEON_HPD_NONE ; 
 int /*<<< orphan*/  SupportedDevicesInfo ; 
 int /*<<< orphan*/  FUNC3 (struct atom_context*,int,int*,int*,int*,int*) ; 
 int FUNC4 (struct drm_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bios_connector*) ; 
 struct bios_connector* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int,int,scalar_t__,TYPE_8__*,int /*<<< orphan*/ ,int,TYPE_10__*,struct radeon_router*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int,scalar_t__*,TYPE_8__*,int*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 TYPE_8__ FUNC14 (struct radeon_device*,int) ; 
 scalar_t__ radeon_r4xx_atom ; 
 scalar_t__* supported_devices_connector_convert ; 

bool FUNC15(struct
								 drm_device
								 *dev)
{
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_mode_info *mode_info = &rdev->mode_info;
	struct atom_context *ctx = mode_info->atom_context;
	int index = FUNC2(DATA, SupportedDevicesInfo);
	uint16_t size, data_offset;
	uint8_t frev, crev;
	uint16_t device_support;
	uint8_t dac;
	union atom_supported_devices *supported_devices;
	int i, j, max_device;
	struct bios_connector *bios_connectors;
	size_t bc_size = sizeof(*bios_connectors) * ATOM_MAX_SUPPORTED_DEVICE;
	struct radeon_router router;

	router.ddc_valid = false;
	router.cd_valid = false;

	bios_connectors = FUNC6(bc_size, GFP_KERNEL);
	if (!bios_connectors)
		return false;

	if (!FUNC3(ctx, index, &size, &frev, &crev,
				    &data_offset)) {
		FUNC5(bios_connectors);
		return false;
	}

	supported_devices =
	    (union atom_supported_devices *)(ctx->bios + data_offset);

	device_support = FUNC7(supported_devices->info.usDeviceSupport);

	if (frev > 1)
		max_device = ATOM_MAX_SUPPORTED_DEVICE;
	else
		max_device = ATOM_MAX_SUPPORTED_DEVICE_INFO;

	for (i = 0; i < max_device; i++) {
		ATOM_CONNECTOR_INFO_I2C ci =
		    supported_devices->info.asConnInfo[i];

		bios_connectors[i].valid = false;

		if (!(device_support & (1 << i))) {
			continue;
		}

		if (i == ATOM_DEVICE_CV_INDEX) {
			FUNC1("Skipping Component Video\n");
			continue;
		}

		bios_connectors[i].connector_type =
		    supported_devices_connector_convert[ci.sucConnectorInfo.
							sbfAccess.
							bfConnectorType];

		if (bios_connectors[i].connector_type ==
		    DRM_MODE_CONNECTOR_Unknown)
			continue;

		dac = ci.sucConnectorInfo.sbfAccess.bfAssociatedDAC;

		bios_connectors[i].line_mux =
			ci.sucI2cId.ucAccess;

		/* give tv unique connector ids */
		if (i == ATOM_DEVICE_TV1_INDEX) {
			bios_connectors[i].ddc_bus.valid = false;
			bios_connectors[i].line_mux = 50;
		} else if (i == ATOM_DEVICE_TV2_INDEX) {
			bios_connectors[i].ddc_bus.valid = false;
			bios_connectors[i].line_mux = 51;
		} else if (i == ATOM_DEVICE_CV_INDEX) {
			bios_connectors[i].ddc_bus.valid = false;
			bios_connectors[i].line_mux = 52;
		} else
			bios_connectors[i].ddc_bus =
			    FUNC14(rdev,
						   bios_connectors[i].line_mux);

		if ((crev > 1) && (frev > 1)) {
			u8 isb = supported_devices->info_2d1.asIntSrcInfo[i].ucIntSrcBitmap;
			switch (isb) {
			case 0x4:
				bios_connectors[i].hpd.hpd = RADEON_HPD_1;
				break;
			case 0xa:
				bios_connectors[i].hpd.hpd = RADEON_HPD_2;
				break;
			default:
				bios_connectors[i].hpd.hpd = RADEON_HPD_NONE;
				break;
			}
		} else {
			if (i == ATOM_DEVICE_DFP1_INDEX)
				bios_connectors[i].hpd.hpd = RADEON_HPD_1;
			else if (i == ATOM_DEVICE_DFP2_INDEX)
				bios_connectors[i].hpd.hpd = RADEON_HPD_2;
			else
				bios_connectors[i].hpd.hpd = RADEON_HPD_NONE;
		}

		/* Always set the connector type to VGA for CRT1/CRT2. if they are
		 * shared with a DVI port, we'll pick up the DVI connector when we
		 * merge the outputs.  Some bioses incorrectly list VGA ports as DVI.
		 */
		if (i == ATOM_DEVICE_CRT1_INDEX || i == ATOM_DEVICE_CRT2_INDEX)
			bios_connectors[i].connector_type =
			    DRM_MODE_CONNECTOR_VGA;

		if (!FUNC11
		    (dev, (1 << i), &bios_connectors[i].connector_type,
		     &bios_connectors[i].ddc_bus, &bios_connectors[i].line_mux,
		     &bios_connectors[i].hpd))
			continue;

		bios_connectors[i].valid = true;
		bios_connectors[i].devices = (1 << i);

		if (FUNC0(rdev) || radeon_r4xx_atom)
			FUNC9(dev,
						FUNC12(dev,
								      (1 << i),
								      dac),
						(1 << i),
						0);
		else
			FUNC10(dev,
						  FUNC12(dev,
									(1 << i),
									dac),
						  (1 << i));
	}

	/* combine shared connectors */
	for (i = 0; i < max_device; i++) {
		if (bios_connectors[i].valid) {
			for (j = 0; j < max_device; j++) {
				if (bios_connectors[j].valid && (i != j)) {
					if (bios_connectors[i].line_mux ==
					    bios_connectors[j].line_mux) {
						/* make sure not to combine LVDS */
						if (bios_connectors[i].devices & (ATOM_DEVICE_LCD_SUPPORT)) {
							bios_connectors[i].line_mux = 53;
							bios_connectors[i].ddc_bus.valid = false;
							continue;
						}
						if (bios_connectors[j].devices & (ATOM_DEVICE_LCD_SUPPORT)) {
							bios_connectors[j].line_mux = 53;
							bios_connectors[j].ddc_bus.valid = false;
							continue;
						}
						/* combine analog and digital for DVI-I */
						if (((bios_connectors[i].devices & (ATOM_DEVICE_DFP_SUPPORT)) &&
						     (bios_connectors[j].devices & (ATOM_DEVICE_CRT_SUPPORT))) ||
						    ((bios_connectors[j].devices & (ATOM_DEVICE_DFP_SUPPORT)) &&
						     (bios_connectors[i].devices & (ATOM_DEVICE_CRT_SUPPORT)))) {
							bios_connectors[i].devices |=
								bios_connectors[j].devices;
							bios_connectors[i].connector_type =
								DRM_MODE_CONNECTOR_DVII;
							if (bios_connectors[j].devices & (ATOM_DEVICE_DFP_SUPPORT))
								bios_connectors[i].hpd =
									bios_connectors[j].hpd;
							bios_connectors[j].valid = false;
						}
					}
				}
			}
		}
	}

	/* add the connectors */
	for (i = 0; i < max_device; i++) {
		if (bios_connectors[i].valid) {
			uint16_t connector_object_id =
				FUNC4(dev,
						      bios_connectors[i].connector_type,
						      bios_connectors[i].devices);
			FUNC8(dev,
						  bios_connectors[i].line_mux,
						  bios_connectors[i].devices,
						  bios_connectors[i].
						  connector_type,
						  &bios_connectors[i].ddc_bus,
						  0,
						  connector_object_id,
						  &bios_connectors[i].hpd,
						  &router);
		}
	}

	FUNC13(dev);

	FUNC5(bios_connectors);
	return true;
}