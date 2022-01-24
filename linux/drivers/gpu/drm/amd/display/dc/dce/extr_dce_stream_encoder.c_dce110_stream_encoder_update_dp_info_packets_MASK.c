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
typedef  scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct TYPE_2__ {int valid; } ;
struct encoder_info_frame {TYPE_1__ hdrsmd; TYPE_1__ spd; TYPE_1__ vsc; } ;
struct dce110_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dce110_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_SEC_CNTL ; 
 int /*<<< orphan*/  DP_SEC_GSP0_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_GSP2_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_GSP3_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_STREAM_ENABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dce110_stream_encoder*,int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(
	struct stream_encoder *enc,
	const struct encoder_info_frame *info_frame)
{
	struct dce110_stream_encoder *enc110 = FUNC0(enc);
	uint32_t value = 0;

	if (info_frame->vsc.valid)
		FUNC3(
					enc110,
					0,  /* packetIndex */
					&info_frame->vsc);

	if (info_frame->spd.valid)
		FUNC3(
				enc110,
				2,  /* packetIndex */
				&info_frame->spd);

	if (info_frame->hdrsmd.valid)
		FUNC3(
				enc110,
				3,  /* packetIndex */
				&info_frame->hdrsmd);

	/* enable/disable transmission of packet(s).
	*  If enabled, packet transmission begins on the next frame
	*/
	FUNC2(DP_SEC_CNTL, DP_SEC_GSP0_ENABLE, info_frame->vsc.valid);
	FUNC2(DP_SEC_CNTL, DP_SEC_GSP2_ENABLE, info_frame->spd.valid);
	FUNC2(DP_SEC_CNTL, DP_SEC_GSP3_ENABLE, info_frame->hdrsmd.valid);

	/* This bit is the master enable bit.
	* When enabling secondary stream engine,
	* this master bit must also be set.
	* This register shared with audio info frame.
	* Therefore we need to enable master bit
	* if at least on of the fields is not 0
	*/
	value = FUNC1(DP_SEC_CNTL);
	if (value)
		FUNC2(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}