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
	const u32 hdmi = head * 0x400;
	struct packed_hdmi_infoframe avi_infoframe;
	struct packed_hdmi_infoframe vendor_infoframe;

	FUNC2(&avi_infoframe, avi, avi_size);
	FUNC2(&vendor_infoframe, vendor, vendor_size);

	if (!(ctrl & 0x40000000)) {
		FUNC0(device, 0x6165c0 + hoff, 0x40000000, 0x00000000);
		FUNC0(device, 0x6f0100 + hdmi, 0x00000001, 0x00000000);
		FUNC0(device, 0x6f00c0 + hdmi, 0x00000001, 0x00000000);
		FUNC0(device, 0x6f0000 + hdmi, 0x00000001, 0x00000000);
		return;
	}

	/* AVI InfoFrame (AVI). */
	FUNC0(device, 0x6f0000 + hdmi, 0x00000001, 0x00000000);
	if (avi_size) {
		FUNC1(device, 0x6f0008 + hdmi, avi_infoframe.header);
		FUNC1(device, 0x6f000c + hdmi, avi_infoframe.subpack0_low);
		FUNC1(device, 0x6f0010 + hdmi, avi_infoframe.subpack0_high);
		FUNC1(device, 0x6f0014 + hdmi, avi_infoframe.subpack1_low);
		FUNC1(device, 0x6f0018 + hdmi, avi_infoframe.subpack1_high);
		FUNC0(device, 0x6f0000 + hdmi, 0x00000001, 0x00000001);
	}

	/* Vendor-specific InfoFrame (VSI). */
	FUNC0(device, 0x6f0100 + hdmi, 0x00010001, 0x00000000);
	if (vendor_size) {
		FUNC1(device, 0x6f0108 + hdmi, vendor_infoframe.header);
		FUNC1(device, 0x6f010c + hdmi, vendor_infoframe.subpack0_low);
		FUNC1(device, 0x6f0110 + hdmi, vendor_infoframe.subpack0_high);
		FUNC1(device, 0x6f0110 + hdmi, 0x00000000);
		FUNC1(device, 0x6f0114 + hdmi, 0x00000000);
		FUNC1(device, 0x6f0118 + hdmi, 0x00000000);
		FUNC1(device, 0x6f011c + hdmi, 0x00000000);
		FUNC1(device, 0x6f0120 + hdmi, 0x00000000);
		FUNC1(device, 0x6f0124 + hdmi, 0x00000000);
		FUNC0(device, 0x6f0100 + hdmi, 0x00000001, 0x00000001);
	}


	/* General Control (GCP). */
	FUNC0(device, 0x6f00c0 + hdmi, 0x00000001, 0x00000000);
	FUNC1(device, 0x6f00cc + hdmi, 0x00000010);
	FUNC0(device, 0x6f00c0 + hdmi, 0x00000001, 0x00000001);

	/* Audio Clock Regeneration (ACR). */
	FUNC1(device, 0x6f0080 + hdmi, 0x82000000);

	/* NV_PDISP_SF_HDMI_CTRL. */
	FUNC0(device, 0x6165c0 + hoff, 0x401f007f, ctrl);
}