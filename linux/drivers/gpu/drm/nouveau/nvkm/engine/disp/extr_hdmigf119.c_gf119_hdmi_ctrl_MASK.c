#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct packed_hdmi_infoframe {int header; int subpack0_low; int subpack0_high; int subpack1_low; int subpack1_high; } ;
struct nvkm_ior {TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int const,int,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_hdmi_infoframe*,int*,int) ; 

void
FUNC3(struct nvkm_ior *ior, int head, bool enable, u8 max_ac_packet,
		u8 rekey, u8 *avi, u8 avi_size, u8 *vendor, u8 vendor_size)
{
	struct nvkm_device *device = ior->disp->engine.subdev.device;
	const u32 ctrl = 0x40000000 * enable |
			 max_ac_packet << 16 |
			 rekey;
	const u32 hoff = head * 0x800;
	struct packed_hdmi_infoframe avi_infoframe;
	struct packed_hdmi_infoframe vendor_infoframe;

	FUNC2(&avi_infoframe, avi, avi_size);
	FUNC2(&vendor_infoframe, vendor, vendor_size);

	if (!(ctrl & 0x40000000)) {
		FUNC0(device, 0x616798 + hoff, 0x40000000, 0x00000000);
		FUNC0(device, 0x616730 + hoff, 0x00000001, 0x00000000);
		FUNC0(device, 0x6167a4 + hoff, 0x00000001, 0x00000000);
		FUNC0(device, 0x616714 + hoff, 0x00000001, 0x00000000);
		return;
	}

	/* AVI InfoFrame */
	FUNC0(device, 0x616714 + hoff, 0x00000001, 0x00000000);
	if (avi_size) {
		FUNC1(device, 0x61671c + hoff, avi_infoframe.header);
		FUNC1(device, 0x616720 + hoff, avi_infoframe.subpack0_low);
		FUNC1(device, 0x616724 + hoff, avi_infoframe.subpack0_high);
		FUNC1(device, 0x616728 + hoff, avi_infoframe.subpack1_low);
		FUNC1(device, 0x61672c + hoff, avi_infoframe.subpack1_high);
		FUNC0(device, 0x616714 + hoff, 0x00000001, 0x00000001);
	}

	/* GENERIC(?) / Vendor InfoFrame? */
	FUNC0(device, 0x616730 + hoff, 0x00010001, 0x00010000);
	if (vendor_size) {
		/*
		 * These appear to be the audio infoframe registers,
		 * but no other set of infoframe registers has yet
		 * been found.
		 */
		FUNC1(device, 0x616738 + hoff, vendor_infoframe.header);
		FUNC1(device, 0x61673c + hoff, vendor_infoframe.subpack0_low);
		FUNC1(device, 0x616740 + hoff, vendor_infoframe.subpack0_high);
		/* Is there a second (or further?) set of subpack registers here? */
		FUNC0(device, 0x616730 + hoff, 0x00000001, 0x00000001);
	}

	/* ??? InfoFrame? */
	FUNC0(device, 0x6167a4 + hoff, 0x00000001, 0x00000000);
	FUNC1(device, 0x6167ac + hoff, 0x00000010);
	FUNC0(device, 0x6167a4 + hoff, 0x00000001, 0x00000001);

	/* HDMI_CTRL */
	FUNC0(device, 0x616798 + hoff, 0x401f007f, ctrl);
}