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
struct dw_hdmi {int bridge_is_on; int /*<<< orphan*/  previous_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct dw_hdmi *hdmi)
{
	hdmi->bridge_is_on = true;
	FUNC0(hdmi, &hdmi->previous_mode);
}