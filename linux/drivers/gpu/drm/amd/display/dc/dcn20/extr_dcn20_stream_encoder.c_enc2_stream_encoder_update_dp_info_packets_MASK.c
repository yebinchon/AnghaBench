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
typedef  scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct encoder_info_frame {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dcn10_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_SEC_CNTL ; 
 int /*<<< orphan*/  DP_SEC_METADATA_PACKET_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_METADATA_TRANSMISSION ; 
 int /*<<< orphan*/  DP_SEC_STREAM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stream_encoder*,struct encoder_info_frame const*) ; 

__attribute__((used)) static void FUNC4(
	struct stream_encoder *enc,
	const struct encoder_info_frame *info_frame)
{
	struct dcn10_stream_encoder *enc1 = FUNC0(enc);
	uint32_t dmdata_packet_enabled = 0;

	FUNC3(enc, info_frame);

	/* check if dynamic metadata packet transmission is enabled */
	FUNC1(DP_SEC_METADATA_TRANSMISSION,
			DP_SEC_METADATA_PACKET_ENABLE, &dmdata_packet_enabled);

	if (dmdata_packet_enabled)
		FUNC2(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}