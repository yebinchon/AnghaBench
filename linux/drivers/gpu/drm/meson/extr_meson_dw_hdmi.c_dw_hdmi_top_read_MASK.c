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
struct meson_dw_hdmi {scalar_t__ hdmitx; } ;

/* Variables and functions */
 scalar_t__ HDMITX_TOP_ADDR_REG ; 
 scalar_t__ HDMITX_TOP_DATA_REG ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  reg_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC4(struct meson_dw_hdmi *dw_hdmi,
				     unsigned int addr)
{
	unsigned long flags;
	unsigned int data;

	FUNC1(&reg_lock, flags);

	/* ADDR must be written twice */
	FUNC3(addr & 0xffff, dw_hdmi->hdmitx + HDMITX_TOP_ADDR_REG);
	FUNC3(addr & 0xffff, dw_hdmi->hdmitx + HDMITX_TOP_ADDR_REG);

	/* Read needs a second DATA read */
	data = FUNC0(dw_hdmi->hdmitx + HDMITX_TOP_DATA_REG);
	data = FUNC0(dw_hdmi->hdmitx + HDMITX_TOP_DATA_REG);

	FUNC2(&reg_lock, flags);

	return data;
}