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
struct dw_hdmi {int /*<<< orphan*/  audio_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_FC_AUDICONF2 ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dw_hdmi *hdmi, unsigned int ca)
{
	FUNC1(&hdmi->audio_mutex);

	FUNC0(hdmi, ca, HDMI_FC_AUDICONF2);

	FUNC2(&hdmi->audio_mutex);
}