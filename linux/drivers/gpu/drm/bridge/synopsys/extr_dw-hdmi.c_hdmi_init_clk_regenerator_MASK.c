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
struct dw_hdmi {int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  sample_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dw_hdmi *hdmi)
{
	FUNC1(&hdmi->audio_mutex);
	FUNC0(hdmi, 74250000, hdmi->sample_rate);
	FUNC2(&hdmi->audio_mutex);
}