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
struct resource_straps {void* dc_pinstraps_audio; void* hdmi_disable; void* audio_stream_number; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_STREAM_NUMBER ; 
 int /*<<< orphan*/  CC_DC_MISC_STRAPS ; 
 int /*<<< orphan*/  DC_PINSTRAPS ; 
 int /*<<< orphan*/  DC_PINSTRAPS_AUDIO ; 
 int /*<<< orphan*/  HDMI_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCC_DC_MISC_STRAPS ; 
 int /*<<< orphan*/  mmDC_PINSTRAPS ; 

__attribute__((used)) static void FUNC2(
	struct dc_context *ctx,
	struct resource_straps *straps)
{
	uint32_t reg_val = FUNC0(ctx, mmCC_DC_MISC_STRAPS, 0);

	straps->audio_stream_number = FUNC1(reg_val,
							  CC_DC_MISC_STRAPS,
							  AUDIO_STREAM_NUMBER);
	straps->hdmi_disable = FUNC1(reg_val,
						   CC_DC_MISC_STRAPS,
						   HDMI_DISABLE);

	reg_val = FUNC0(ctx, mmDC_PINSTRAPS, 0);
	straps->dc_pinstraps_audio = FUNC1(reg_val,
							 DC_PINSTRAPS,
							 DC_PINSTRAPS_AUDIO);
}