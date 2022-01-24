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
typedef  int u32 ;
struct oaktrail_hdmi_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_HICR ; 
 int HDMI_INTR_I2C_DONE ; 
 int HDMI_INTR_I2C_ERROR ; 
 int HDMI_INTR_I2C_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct oaktrail_hdmi_dev *hdmi_dev)
{
	u32 temp;

	temp = FUNC0(HDMI_HICR);
	temp |= (HDMI_INTR_I2C_ERROR | HDMI_INTR_I2C_FULL | HDMI_INTR_I2C_DONE);
	FUNC1(HDMI_HICR, temp);
	FUNC0(HDMI_HICR);
}