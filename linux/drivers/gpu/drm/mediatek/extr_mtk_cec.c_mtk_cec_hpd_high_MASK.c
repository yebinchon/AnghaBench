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
struct mtk_cec {scalar_t__ regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int HDMI_HTPLG ; 
 unsigned int HDMI_PORD ; 
 scalar_t__ RX_EVENT ; 
 struct mtk_cec* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 

bool FUNC2(struct device *dev)
{
	struct mtk_cec *cec = FUNC0(dev);
	unsigned int status;

	status = FUNC1(cec->regs + RX_EVENT);

	return (status & (HDMI_PORD | HDMI_HTPLG)) == (HDMI_PORD | HDMI_HTPLG);
}