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
typedef  scalar_t__ u32 ;
struct ipu_vdi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ MEDIA_BUS_FMT_UYVY8_1X16 ; 
 scalar_t__ MEDIA_BUS_FMT_UYVY8_2X8 ; 
 scalar_t__ MEDIA_BUS_FMT_YUYV8_1X16 ; 
 scalar_t__ MEDIA_BUS_FMT_YUYV8_2X8 ; 
 int /*<<< orphan*/  VDI_C ; 
 scalar_t__ VDI_C_BURST_SIZE1_4 ; 
 scalar_t__ VDI_C_BURST_SIZE2_4 ; 
 scalar_t__ VDI_C_BURST_SIZE3_4 ; 
 scalar_t__ VDI_C_CH_420 ; 
 scalar_t__ VDI_C_CH_422 ; 
 scalar_t__ VDI_C_VWM1_CLR_2 ; 
 scalar_t__ VDI_C_VWM3_CLR_2 ; 
 int /*<<< orphan*/  VDI_FSIZE ; 
 scalar_t__ FUNC0 (struct ipu_vdi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_vdi*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_vdi *vdi, u32 code, int xres, int yres)
{
	unsigned long flags;
	u32 pixel_fmt, reg;

	FUNC2(&vdi->lock, flags);

	reg = ((yres - 1) << 16) | (xres - 1);
	FUNC1(vdi, reg, VDI_FSIZE);

	/*
	 * Full motion, only vertical filter is used.
	 * Burst size is 4 accesses
	 */
	if (code == MEDIA_BUS_FMT_UYVY8_2X8 ||
	    code == MEDIA_BUS_FMT_UYVY8_1X16 ||
	    code == MEDIA_BUS_FMT_YUYV8_2X8 ||
	    code == MEDIA_BUS_FMT_YUYV8_1X16)
		pixel_fmt = VDI_C_CH_422;
	else
		pixel_fmt = VDI_C_CH_420;

	reg = FUNC0(vdi, VDI_C);
	reg |= pixel_fmt;
	reg |= VDI_C_BURST_SIZE2_4;
	reg |= VDI_C_BURST_SIZE1_4 | VDI_C_VWM1_CLR_2;
	reg |= VDI_C_BURST_SIZE3_4 | VDI_C_VWM3_CLR_2;
	FUNC1(vdi, reg, VDI_C);

	FUNC3(&vdi->lock, flags);
}