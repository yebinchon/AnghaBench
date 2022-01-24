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
typedef  int u8 ;
struct rk3066_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_SYS_CTRL ; 
 int HDMI_SYS_POWER_MODE_MASK ; 
 int FUNC0 (struct rk3066_hdmi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u8 FUNC1(struct rk3066_hdmi *hdmi)
{
	return FUNC0(hdmi, HDMI_SYS_CTRL) & HDMI_SYS_POWER_MODE_MASK;
}