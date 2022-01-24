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
struct display_sink_capability {int /*<<< orphan*/  dongle_type; } ;
struct ddc_service {int dummy; } ;
struct audio_support {int dummy; } ;
typedef  enum signal_type { ____Placeholder_signal_type } signal_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddc_service*,struct display_sink_capability*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct audio_support*) ; 

__attribute__((used)) static enum signal_type FUNC2(
		struct ddc_service *ddc,
		struct display_sink_capability *sink_cap,
		struct audio_support *audio_support)
{
	FUNC0(
						ddc, sink_cap);
	return FUNC1(
			sink_cap->dongle_type,
			audio_support);
}