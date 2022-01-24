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
typedef  union audio_sample_rates {int dummy; } audio_sample_rates ;
typedef  int /*<<< orphan*/  uint32_t ;
struct audio_crtc_info {int dummy; } ;
typedef  enum signal_type { ____Placeholder_signal_type } signal_type ;

/* Variables and functions */
#define  SIGNAL_TYPE_DISPLAY_PORT 131 
#define  SIGNAL_TYPE_DISPLAY_PORT_MST 130 
#define  SIGNAL_TYPE_EDP 129 
#define  SIGNAL_TYPE_HDMI_TYPE_A 128 
 int /*<<< orphan*/  FUNC0 (struct audio_crtc_info const*,int /*<<< orphan*/ ,union audio_sample_rates*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_crtc_info const*,int /*<<< orphan*/ ,union audio_sample_rates*) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_crtc_info const*,int /*<<< orphan*/ ,union audio_sample_rates*) ; 

__attribute__((used)) static void FUNC3(
	const struct audio_crtc_info *crtc_info,
	uint32_t channel_count,
	enum signal_type signal,
	union audio_sample_rates *sample_rates)
{
	switch (signal) {
	case SIGNAL_TYPE_HDMI_TYPE_A:
		FUNC2(
			crtc_info, channel_count, sample_rates);
		break;
	case SIGNAL_TYPE_EDP:
	case SIGNAL_TYPE_DISPLAY_PORT:
		FUNC1(
			crtc_info, channel_count, sample_rates);
		break;
	case SIGNAL_TYPE_DISPLAY_PORT_MST:
		FUNC0(
			crtc_info, channel_count, sample_rates);
		break;
	default:
		break;
	}
}