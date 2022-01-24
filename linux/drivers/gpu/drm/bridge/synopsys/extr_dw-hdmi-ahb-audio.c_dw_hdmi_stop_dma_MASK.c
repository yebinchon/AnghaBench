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
struct TYPE_2__ {scalar_t__ base; } ;
struct snd_dw_hdmi {TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ HDMI_AHB_DMA_MASK ; 
 scalar_t__ HDMI_AHB_DMA_STOP ; 
 int /*<<< orphan*/  HDMI_AHB_DMA_STOP_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct snd_dw_hdmi *dw)
{
	/* Disable interrupts before disabling DMA */
	FUNC0(~0, dw->data.base + HDMI_AHB_DMA_MASK);
	FUNC0(HDMI_AHB_DMA_STOP_STOP, dw->data.base + HDMI_AHB_DMA_STOP);
}