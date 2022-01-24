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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_AUDIO_CLOCK_EN ; 
 int /*<<< orphan*/  AFMT_CNTL ; 
 int /*<<< orphan*/  AFMT_GENERIC4_IMMEDIATE_UPDATE ; 
 int /*<<< orphan*/  AFMT_GENERIC4_IMMEDIATE_UPDATE_PENDING ; 
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
 struct dcn10_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_SEC_CNTL ; 
 int /*<<< orphan*/  DP_SEC_CNTL2 ; 
 int /*<<< orphan*/  DP_SEC_GSP4_SEND ; 
 int /*<<< orphan*/  DP_SEC_GSP4_SEND_ANY_LINE ; 
 int /*<<< orphan*/  DP_SEC_GSP4_SEND_PENDING ; 
 int /*<<< orphan*/  DP_SEC_STREAM_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int const) ; 

void FUNC6(
	struct stream_encoder *enc,
	const uint8_t *custom_sdp_message,
	unsigned int sdp_message_size)
{
	struct dcn10_stream_encoder *enc1 = FUNC0(enc);
	uint32_t value = 0;

	/* TODOFPGA Figure out a proper number for max_retries polling for lock
	 * use 50 for now.
	 */
	uint32_t max_retries = 50;

	/* check if GSP4 is transmitted */
	FUNC4(DP_SEC_CNTL2, DP_SEC_GSP4_SEND_PENDING,
		0, 10, max_retries);

	/* disable GSP4 transmitting */
	FUNC3(DP_SEC_CNTL2, DP_SEC_GSP4_SEND, 0);

	/* transmit GSP4 at the earliest time in a frame */
	FUNC3(DP_SEC_CNTL2, DP_SEC_GSP4_SEND_ANY_LINE, 1);

	/*we need turn on clock before programming AFMT block*/
	FUNC3(AFMT_CNTL, AFMT_AUDIO_CLOCK_EN, 1);

	/* check if HW reading GSP memory */
	FUNC4(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT,
			0, 10, max_retries);

	/* HW does is not reading GSP memory not reading too long ->
	 * something wrong. clear GPS memory access and notify?
	 * hw SW is writing to GSP memory
	 */
	FUNC3(AFMT_VBI_PACKET_CONTROL, AFMT_GENERIC_CONFLICT_CLR, 1);

	/* use generic packet 4 for immediate sdp message */
	FUNC3(AFMT_VBI_PACKET_CONTROL,
			AFMT_GENERIC_INDEX, 4);

	/* write generic packet header
	 * (4th byte is for GENERIC0 only)
	 */
	FUNC2(AFMT_GENERIC_HDR, 0,
			AFMT_GENERIC_HB0, custom_sdp_message[0],
			AFMT_GENERIC_HB1, custom_sdp_message[1],
			AFMT_GENERIC_HB2, custom_sdp_message[2],
			AFMT_GENERIC_HB3, custom_sdp_message[3]);

	/* write generic packet contents
	 * (we never use last 4 bytes)
	 * there are 8 (0-7) mmDIG0_AFMT_GENERIC0_x registers
	 */
	{
		const uint32_t *content =
			(const uint32_t *) &custom_sdp_message[4];

		FUNC5(AFMT_GENERIC_0, *content++);
		FUNC5(AFMT_GENERIC_1, *content++);
		FUNC5(AFMT_GENERIC_2, *content++);
		FUNC5(AFMT_GENERIC_3, *content++);
		FUNC5(AFMT_GENERIC_4, *content++);
		FUNC5(AFMT_GENERIC_5, *content++);
		FUNC5(AFMT_GENERIC_6, *content++);
		FUNC5(AFMT_GENERIC_7, *content);
	}

	/* check whether GENERIC4 registers double buffer update in immediate mode
	 * is pending
	 */
	FUNC4(AFMT_VBI_PACKET_CONTROL1, AFMT_GENERIC4_IMMEDIATE_UPDATE_PENDING,
			0, 10, max_retries);

	/* atomically update double-buffered GENERIC4 registers in immediate mode
	 * (update immediately)
	 */
	FUNC3(AFMT_VBI_PACKET_CONTROL1,
			AFMT_GENERIC4_IMMEDIATE_UPDATE, 1);

	/* enable GSP4 transmitting */
	FUNC3(DP_SEC_CNTL2, DP_SEC_GSP4_SEND, 1);

	/* This bit is the master enable bit.
	 * When enabling secondary stream engine,
	 * this master bit must also be set.
	 * This register shared with audio info frame.
	 * Therefore we need to enable master bit
	 * if at least on of the fields is not 0
	 */
	value = FUNC1(DP_SEC_CNTL);
	if (value)
		FUNC3(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}