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
struct audio_info {int dummy; } ;
struct audio_crtc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stream_encoder*,unsigned int,struct audio_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct stream_encoder*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stream_encoder*,struct audio_crtc_info*) ; 

void FUNC3(
	struct stream_encoder *enc,
	unsigned int az_inst,
	struct audio_info *info,
	struct audio_crtc_info *audio_crtc_info)
{
	FUNC1(enc, true);
	FUNC2(enc, audio_crtc_info);
	FUNC0(enc, az_inst, info);
}