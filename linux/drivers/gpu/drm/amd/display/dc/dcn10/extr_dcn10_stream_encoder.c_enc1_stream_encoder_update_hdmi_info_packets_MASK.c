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
struct stream_encoder {int dummy; } ;
struct encoder_info_frame {int /*<<< orphan*/  hdrsmd; int /*<<< orphan*/  spd; int /*<<< orphan*/  gamut; int /*<<< orphan*/  vendor; int /*<<< orphan*/  avi; } ;
struct dcn10_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dcn10_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  HDMI_DB_CONTROL ; 
 int /*<<< orphan*/  HDMI_DB_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn10_stream_encoder*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
	struct stream_encoder *enc,
	const struct encoder_info_frame *info_frame)
{
	struct dcn10_stream_encoder *enc1 = FUNC0(enc);

	/* for bring up, disable dp double  TODO */
	FUNC1(HDMI_DB_CONTROL, HDMI_DB_DISABLE, 1);

	FUNC2(enc1, 0, &info_frame->avi);
	FUNC2(enc1, 1, &info_frame->vendor);
	FUNC2(enc1, 2, &info_frame->gamut);
	FUNC2(enc1, 3, &info_frame->spd);
	FUNC2(enc1, 4, &info_frame->hdrsmd);
}