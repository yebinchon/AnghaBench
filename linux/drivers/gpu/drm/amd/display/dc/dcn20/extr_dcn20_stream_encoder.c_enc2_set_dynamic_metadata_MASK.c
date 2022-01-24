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
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;
typedef  enum dynamic_metadata_mode { ____Placeholder_dynamic_metadata_mode } dynamic_metadata_mode ;

/* Variables and functions */
 struct dcn10_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DIG_FE_CNTL ; 
 int /*<<< orphan*/  DME_CONTROL ; 
 int /*<<< orphan*/  DOLBY_VISION_EN ; 
 int /*<<< orphan*/  DP_SEC_METADATA_PACKET_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_METADATA_PACKET_LINE ; 
 int /*<<< orphan*/  DP_SEC_METADATA_PACKET_LINE_REFERENCE ; 
 int /*<<< orphan*/  DP_SEC_METADATA_TRANSMISSION ; 
 int /*<<< orphan*/  HDMI_METADATA_PACKET_CONTROL ; 
 int /*<<< orphan*/  HDMI_METADATA_PACKET_ENABLE ; 
 int /*<<< orphan*/  HDMI_METADATA_PACKET_LINE ; 
 int /*<<< orphan*/  HDMI_METADATA_PACKET_LINE_REFERENCE ; 
 int /*<<< orphan*/  METADATA_ENGINE_EN ; 
 int /*<<< orphan*/  METADATA_HUBP_REQUESTOR_ID ; 
 int /*<<< orphan*/  METADATA_STREAM_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int dmdata_dolby_vision ; 
 int dmdata_dp ; 

void FUNC4(struct stream_encoder *enc,
		bool enable_dme,
		uint32_t hubp_requestor_id,
		enum dynamic_metadata_mode dmdata_mode)
{
	struct dcn10_stream_encoder *enc1 = FUNC0(enc);

	if (enable_dme) {
		FUNC2(DME_CONTROL,
				METADATA_HUBP_REQUESTOR_ID, hubp_requestor_id,
				METADATA_STREAM_TYPE, (dmdata_mode == dmdata_dolby_vision) ? 1 : 0);

		/* Use default line reference DP_SOF for bringup.
		 * Should use OTG_SOF for DRR cases
		 */
		if (dmdata_mode == dmdata_dp)
			FUNC3(DP_SEC_METADATA_TRANSMISSION,
					DP_SEC_METADATA_PACKET_ENABLE, 1,
					DP_SEC_METADATA_PACKET_LINE_REFERENCE, 0,
					DP_SEC_METADATA_PACKET_LINE, 20);
		else {
			FUNC3(HDMI_METADATA_PACKET_CONTROL,
					HDMI_METADATA_PACKET_ENABLE, 1,
					HDMI_METADATA_PACKET_LINE_REFERENCE, 0,
					HDMI_METADATA_PACKET_LINE, 2);

			if (dmdata_mode == dmdata_dolby_vision)
				FUNC1(DIG_FE_CNTL,
						DOLBY_VISION_EN, 1);
		}

		FUNC1(DME_CONTROL,
				METADATA_ENGINE_EN, 1);
	} else {
		FUNC1(DME_CONTROL,
				METADATA_ENGINE_EN, 0);

		if (dmdata_mode == dmdata_dp)
			FUNC1(DP_SEC_METADATA_TRANSMISSION,
					DP_SEC_METADATA_PACKET_ENABLE, 0);
		else {
			FUNC1(HDMI_METADATA_PACKET_CONTROL,
					HDMI_METADATA_PACKET_ENABLE, 0);
			FUNC1(DIG_FE_CNTL,
					DOLBY_VISION_EN, 0);
		}
	}
}