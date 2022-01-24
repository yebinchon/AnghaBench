#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int ucAction; int ucLaneNum; int /*<<< orphan*/  ucBitPerColor; int /*<<< orphan*/  ucConfig; void* ucEncoderMode; void* usPixelClock; void* usConnectorId; } ;
struct TYPE_9__ {TYPE_3__ sExtEncoder; } ;
struct TYPE_6__ {int ucAction; int ucLaneNum; int /*<<< orphan*/  ucConfig; void* ucEncoderMode; void* usPixelClock; } ;
struct TYPE_7__ {TYPE_1__ sDigEncoder; } ;
union external_encoder_control {TYPE_4__ v3; TYPE_2__ v1; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u8 ;
typedef  int u32 ;
struct radeon_encoder {int encoder_enum; int pixel_clock; } ;
struct TYPE_10__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {TYPE_5__ mode_info; } ;
struct radeon_connector_atom_dig {int dp_clock; int dp_lane_count; } ;
struct radeon_connector {int connector_object_id; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int ENUM_ID_MASK ; 
 int ENUM_ID_SHIFT ; 
 int EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_5_40GHZ ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_CONFIG_V3_ENCODER1 ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_CONFIG_V3_ENCODER2 ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_CONFIG_V3_ENCODER3 ; 
 int /*<<< orphan*/  ExternalEncoderControl ; 
#define  GRAPH_OBJECT_ENUM_ID1 130 
#define  GRAPH_OBJECT_ENUM_ID2 129 
#define  GRAPH_OBJECT_ENUM_ID3 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OBJECT_ID_MASK ; 
 int OBJECT_ID_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*,int*) ; 
 void* FUNC5 (struct drm_encoder*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (union external_encoder_control*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int) ; 
 struct drm_connector* FUNC10 (struct drm_encoder*) ; 
 struct drm_connector* FUNC11 (struct drm_encoder*) ; 
 struct radeon_connector* FUNC12 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC13 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC14(struct drm_encoder *encoder,
				struct drm_encoder *ext_encoder,
				int action)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC13(encoder);
	struct radeon_encoder *ext_radeon_encoder = FUNC13(ext_encoder);
	union external_encoder_control args;
	struct drm_connector *connector;
	int index = FUNC2(COMMAND, ExternalEncoderControl);
	u8 frev, crev;
	int dp_clock = 0;
	int dp_lane_count = 0;
	int connector_object_id = 0;
	u32 ext_enum = (ext_radeon_encoder->encoder_enum & ENUM_ID_MASK) >> ENUM_ID_SHIFT;

	if (action == EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT)
		connector = FUNC11(encoder);
	else
		connector = FUNC10(encoder);

	if (connector) {
		struct radeon_connector *radeon_connector = FUNC12(connector);
		struct radeon_connector_atom_dig *dig_connector =
			radeon_connector->con_priv;

		dp_clock = dig_connector->dp_clock;
		dp_lane_count = dig_connector->dp_lane_count;
		connector_object_id =
			(radeon_connector->connector_object_id & OBJECT_ID_MASK) >> OBJECT_ID_SHIFT;
	}

	FUNC7(&args, 0, sizeof(args));

	if (!FUNC4(rdev->mode_info.atom_context, index, &frev, &crev))
		return;

	switch (frev) {
	case 1:
		/* no params on frev 1 */
		break;
	case 2:
		switch (crev) {
		case 1:
		case 2:
			args.v1.sDigEncoder.ucAction = action;
			args.v1.sDigEncoder.usPixelClock = FUNC6(radeon_encoder->pixel_clock / 10);
			args.v1.sDigEncoder.ucEncoderMode = FUNC5(encoder);

			if (FUNC1(args.v1.sDigEncoder.ucEncoderMode)) {
				if (dp_clock == 270000)
					args.v1.sDigEncoder.ucConfig |= ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ;
				args.v1.sDigEncoder.ucLaneNum = dp_lane_count;
			} else if (FUNC9(encoder, radeon_encoder->pixel_clock))
				args.v1.sDigEncoder.ucLaneNum = 8;
			else
				args.v1.sDigEncoder.ucLaneNum = 4;
			break;
		case 3:
			args.v3.sExtEncoder.ucAction = action;
			if (action == EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT)
				args.v3.sExtEncoder.usConnectorId = FUNC6(connector_object_id);
			else
				args.v3.sExtEncoder.usPixelClock = FUNC6(radeon_encoder->pixel_clock / 10);
			args.v3.sExtEncoder.ucEncoderMode = FUNC5(encoder);

			if (FUNC1(args.v3.sExtEncoder.ucEncoderMode)) {
				if (dp_clock == 270000)
					args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ;
				else if (dp_clock == 540000)
					args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_5_40GHZ;
				args.v3.sExtEncoder.ucLaneNum = dp_lane_count;
			} else if (FUNC9(encoder, radeon_encoder->pixel_clock))
				args.v3.sExtEncoder.ucLaneNum = 8;
			else
				args.v3.sExtEncoder.ucLaneNum = 4;
			switch (ext_enum) {
			case GRAPH_OBJECT_ENUM_ID1:
				args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_ENCODER1;
				break;
			case GRAPH_OBJECT_ENUM_ID2:
				args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_ENCODER2;
				break;
			case GRAPH_OBJECT_ENUM_ID3:
				args.v3.sExtEncoder.ucConfig |= EXTERNAL_ENCODER_CONFIG_V3_ENCODER3;
				break;
			}
			args.v3.sExtEncoder.ucBitPerColor = FUNC8(encoder);
			break;
		default:
			FUNC0("Unknown table version: %d, %d\n", frev, crev);
			return;
		}
		break;
	default:
		FUNC0("Unknown table version: %d, %d\n", frev, crev);
		return;
	}
	FUNC3(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}