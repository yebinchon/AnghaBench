#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mtmdsclock; } ;
struct TYPE_4__ {TYPE_1__ video_mode; } ;
struct dw_hdmi {int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  sample_rate; TYPE_2__ hdmi_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dw_hdmi *hdmi)
{
	FUNC1(&hdmi->audio_mutex);
	FUNC0(hdmi, hdmi->hdmi_data.video_mode.mtmdsclock,
				 hdmi->sample_rate);
	FUNC2(&hdmi->audio_mutex);
}