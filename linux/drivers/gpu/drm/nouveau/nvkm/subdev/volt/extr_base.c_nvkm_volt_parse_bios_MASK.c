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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_volt {int min_uv; int max_uv; size_t vid_nr; int vid_mask; TYPE_1__* vid; } ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;
struct nvbios_volt_entry {scalar_t__ voltage; int vid; } ;
struct nvbios_volt {int vidmask; scalar_t__ base; scalar_t__ step; int min; int max; scalar_t__ type; int pwm_range; scalar_t__ ranged; } ;
struct TYPE_2__ {scalar_t__ uv; int vid; } ;

/* Variables and functions */
 scalar_t__ NVBIOS_VOLT_PWM ; 
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,int,int*,int*,struct nvbios_volt_entry*) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,int*,int*,int*,int*,struct nvbios_volt*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_bios *bios, struct nvkm_volt *volt)
{
	struct nvkm_subdev *subdev = &bios->subdev;
	struct nvbios_volt_entry ivid;
	struct nvbios_volt info;
	u8  ver, hdr, cnt, len;
	u32 data;
	int i;

	data = FUNC3(bios, &ver, &hdr, &cnt, &len, &info);
	if (data && info.vidmask && info.base && info.step && info.ranged) {
		FUNC4(subdev, "found ranged based VIDs\n");
		volt->min_uv = info.min;
		volt->max_uv = info.max;
		for (i = 0; i < info.vidmask + 1; i++) {
			if (info.base >= info.min &&
				info.base <= info.max) {
				volt->vid[volt->vid_nr].uv = info.base;
				volt->vid[volt->vid_nr].vid = i;
				volt->vid_nr++;
			}
			info.base += info.step;
		}
		volt->vid_mask = info.vidmask;
	} else if (data && info.vidmask && !info.ranged) {
		FUNC4(subdev, "found entry based VIDs\n");
		volt->min_uv = 0xffffffff;
		volt->max_uv = 0;
		for (i = 0; i < cnt; i++) {
			data = FUNC2(bios, i, &ver, &hdr,
						       &ivid);
			if (data) {
				volt->vid[volt->vid_nr].uv = ivid.voltage;
				volt->vid[volt->vid_nr].vid = ivid.vid;
				volt->vid_nr++;
				volt->min_uv = FUNC1(volt->min_uv, ivid.voltage);
				volt->max_uv = FUNC0(volt->max_uv, ivid.voltage);
			}
		}
		volt->vid_mask = info.vidmask;
	} else if (data && info.type == NVBIOS_VOLT_PWM) {
		volt->min_uv = info.base;
		volt->max_uv = info.base + info.pwm_range;
	}
}