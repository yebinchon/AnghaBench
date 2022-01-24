#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  enc_out_bus_format; int /*<<< orphan*/  enc_in_bus_format; } ;
struct dw_hdmi {TYPE_1__ hdmi_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dw_hdmi *hdmi)
{
	if (!FUNC1(hdmi->hdmi_data.enc_in_bus_format))
		return 0;

	if (FUNC0(hdmi->hdmi_data.enc_out_bus_format) ||
	    FUNC2(hdmi->hdmi_data.enc_out_bus_format))
		return 1;

	return 0;
}