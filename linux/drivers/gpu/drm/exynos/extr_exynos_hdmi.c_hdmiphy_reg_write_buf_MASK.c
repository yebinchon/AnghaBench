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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct hdmi_context {scalar_t__ regs_hdmiphy; scalar_t__ hdmiphy_port; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct hdmi_context *hdata,
			u32 reg_offset, const u8 *buf, u32 len)
{
	if ((reg_offset + len) > 32)
		return -EINVAL;

	if (hdata->hdmiphy_port) {
		int ret;

		ret = FUNC0(hdata->hdmiphy_port, buf, len);
		if (ret == len)
			return 0;
		return ret;
	} else {
		int i;
		for (i = 0; i < len; i++)
			FUNC1(buf[i], hdata->regs_hdmiphy +
				((reg_offset + i)<<2));
		return 0;
	}
}