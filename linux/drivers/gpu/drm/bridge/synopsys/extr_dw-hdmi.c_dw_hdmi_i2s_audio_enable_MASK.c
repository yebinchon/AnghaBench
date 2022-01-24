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
struct dw_hdmi {int /*<<< orphan*/  audio_n; int /*<<< orphan*/  audio_cts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dw_hdmi *hdmi)
{
	FUNC1(hdmi, hdmi->audio_cts, hdmi->audio_n);
	FUNC0(hdmi, true);
}