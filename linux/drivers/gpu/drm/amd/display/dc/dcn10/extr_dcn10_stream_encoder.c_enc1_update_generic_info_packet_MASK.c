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
typedef  int uint32_t ;
struct dcn10_stream_encoder {int dummy; } ;
struct dc_info_packet {int /*<<< orphan*/ * sb; int /*<<< orphan*/  hb3; int /*<<< orphan*/  hb2; int /*<<< orphan*/  hb1; int /*<<< orphan*/  hb0; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_AUDIO_CLOCK_EN ; 
 int /*<<< orphan*/  AFMT_CNTL ; 
 int /*<<< orphan*/  AFMT_GENERIC0_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC1_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC2_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC3_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC4_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC5_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC6_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC7_FRAME_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC_0 ; 
 int /*<<< orphan*/  AFMT_GENERIC_1 ; 
 int /*<<< orphan*/  AFMT_GENERIC_2 ; 
 int /*<<< orphan*/  AFMT_GENERIC_3 ; 
 int /*<<< orphan*/  AFMT_GENERIC_4 ; 
 int /*<<< orphan*/  AFMT_GENERIC_5 ; 
 int /*<<< orphan*/  AFMT_GENERIC_6 ; 
 int /*<<< orphan*/  AFMT_GENERIC_7 ; 
 int /*<<< orphan*/  AFMT_GENERIC_CONFLICT ; 
 int /*<<< orphan*/  AFMT_GENERIC_CONFLICT_CLR ; 
 int /*<<< orphan*/  AFMT_GENERIC_HB0 ; 
 int /*<<< orphan*/  AFMT_GENERIC_HB1 ; 
 int /*<<< orphan*/  AFMT_GENERIC_HB2 ; 
 int /*<<< orphan*/  AFMT_GENERIC_HB3 ; 
 int /*<<< orphan*/  AFMT_GENERIC_HDR ; 
 int /*<<< orphan*/  AFMT_GENERIC_INDEX ; 
 int /*<<< orphan*/  AFMT_VBI_PACKET_CONTROL ; 
 int /*<<< orphan*/  AFMT_VBI_PACKET_CONTROL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int const) ; 

void FUNC6(
	struct dcn10_stream_encoder *enc1,
	uint32_t packet_index,
	const struct dc_info_packet *info_packet)
{
	uint32_t regval;
	/* TODOFPGA Figure out a proper number for max_retries polling for lock
	 * use 50 for now.
	 */
	uint32_t max_retries = 50;

	/*we need turn on clock before programming AFMT block*/
	FUNC3(AFMT_CNTL, AFMT_AUDIO_CLOCK_EN, 1);

	if (packet_index >= 8)
		FUNC0(0);

	/* poll dig_update_lock is not locked -> asic internal signal
	 * assume otg master lock will unlock it
	 */
/*		REG_WAIT(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_LOCK_STATUS,
			0, 10, max_retries);*/

	/* check if HW reading GSP memory */
	FUNC4(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT,
			0, 10, max_retries);

	/* HW does is not reading GSP memory not reading too long ->
	 * something wrong. clear GPS memory access and notify?
	 * hw SW is writing to GSP memory
	 */
	FUNC3(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT_CLR, 1);

	/* choose which generic packet to use */
	regval = FUNC1(AFMT_VBI_PACKET_CONTROL);
	FUNC3(AFMT_VBI_PACKET_CONTROL,
			AFMT_GENERIC_INDEX, packet_index);

	/* write generic packet header
	 * (4th byte is for GENERIC0 only)
	 */
	FUNC2(AFMT_GENERIC_HDR, 0,
			AFMT_GENERIC_HB0, info_packet->hb0,
			AFMT_GENERIC_HB1, info_packet->hb1,
			AFMT_GENERIC_HB2, info_packet->hb2,
			AFMT_GENERIC_HB3, info_packet->hb3);

	/* write generic packet contents
	 * (we never use last 4 bytes)
	 * there are 8 (0-7) mmDIG0_AFMT_GENERIC0_x registers
	 */
	{
		const uint32_t *content =
			(const uint32_t *) &info_packet->sb[0];

		FUNC5(AFMT_GENERIC_0, *content++);
		FUNC5(AFMT_GENERIC_1, *content++);
		FUNC5(AFMT_GENERIC_2, *content++);
		FUNC5(AFMT_GENERIC_3, *content++);
		FUNC5(AFMT_GENERIC_4, *content++);
		FUNC5(AFMT_GENERIC_5, *content++);
		FUNC5(AFMT_GENERIC_6, *content++);
		FUNC5(AFMT_GENERIC_7, *content);
	}

	switch (packet_index) {
	case 0:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC0_FRAME_UPDATE, 1);
		break;
	case 1:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC1_FRAME_UPDATE, 1);
		break;
	case 2:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC2_FRAME_UPDATE, 1);
		break;
	case 3:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC3_FRAME_UPDATE, 1);
		break;
	case 4:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC4_FRAME_UPDATE, 1);
		break;
	case 5:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC5_FRAME_UPDATE, 1);
		break;
	case 6:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC6_FRAME_UPDATE, 1);
		break;
	case 7:
		FUNC3(AFMT_VBI_PACKET_CONTROL1,
				AFMT_GENERIC7_FRAME_UPDATE, 1);
		break;
	default:
		break;
	}
}