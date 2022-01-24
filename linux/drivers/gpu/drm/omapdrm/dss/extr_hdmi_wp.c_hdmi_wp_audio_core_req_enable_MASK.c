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
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_WP_AUDIO_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC1(struct hdmi_wp_data *wp, bool enable)
{
	FUNC0(wp->base, HDMI_WP_AUDIO_CTRL, enable, 30, 30);

	return 0;
}