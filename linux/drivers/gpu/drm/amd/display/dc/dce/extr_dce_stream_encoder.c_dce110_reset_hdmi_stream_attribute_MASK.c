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
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {TYPE_1__* se_mask; } ;
struct TYPE_2__ {scalar_t__ HDMI_DATA_SCRAMBLE_EN; } ;

/* Variables and functions */
 struct dce110_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  HDMI_CLOCK_CHANNEL_RATE ; 
 int /*<<< orphan*/  HDMI_CONTROL ; 
 int /*<<< orphan*/  HDMI_DATA_SCRAMBLE_EN ; 
 int /*<<< orphan*/  HDMI_DEEP_COLOR_ENABLE ; 
 int /*<<< orphan*/  HDMI_KEEPOUT_MODE ; 
 int /*<<< orphan*/  HDMI_PACKET_GEN_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct stream_encoder *enc)
{
	struct dce110_stream_encoder *enc110 = FUNC0(enc);
	if (enc110->se_mask->HDMI_DATA_SCRAMBLE_EN)
		FUNC2(HDMI_CONTROL,
			HDMI_PACKET_GEN_VERSION, 1,
			HDMI_KEEPOUT_MODE, 1,
			HDMI_DEEP_COLOR_ENABLE, 0,
			HDMI_DATA_SCRAMBLE_EN, 0,
			HDMI_CLOCK_CHANNEL_RATE, 0);
	else
		FUNC1(HDMI_CONTROL,
			HDMI_PACKET_GEN_VERSION, 1,
			HDMI_KEEPOUT_MODE, 1,
			HDMI_DEEP_COLOR_ENABLE, 0);
}