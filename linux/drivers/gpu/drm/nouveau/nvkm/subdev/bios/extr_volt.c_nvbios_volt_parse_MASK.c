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
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_volt {int vidmask; int ranged; int base; int step; int min; int max; int pwm_freq; int pwm_range; void* type; } ;

/* Variables and functions */
 void* NVBIOS_VOLT_GPIO ; 
 void* NVBIOS_VOLT_PWM ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_volt*,int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 void* FUNC4 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC5 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct nvkm_bios*,int*,int*,int*,int*) ; 

u32
FUNC7(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
		  struct nvbios_volt *info)
{
	u32 volt = FUNC6(bios, ver, hdr, cnt, len);
	FUNC1(info, 0x00, sizeof(*info));
	switch (!!volt * *ver) {
	case 0x12:
		info->type    = NVBIOS_VOLT_GPIO;
		info->vidmask = FUNC3(bios, volt + 0x04);
		info->ranged  = false;
		break;
	case 0x20:
		info->type    = NVBIOS_VOLT_GPIO;
		info->vidmask = FUNC3(bios, volt + 0x05);
		info->ranged  = false;
		break;
	case 0x30:
		info->type    = NVBIOS_VOLT_GPIO;
		info->vidmask = FUNC3(bios, volt + 0x04);
		info->ranged  = false;
		break;
	case 0x40:
		info->type    = NVBIOS_VOLT_GPIO;
		info->base    = FUNC5(bios, volt + 0x04);
		info->step    = FUNC4(bios, volt + 0x08);
		info->vidmask = FUNC3(bios, volt + 0x0b);
		info->ranged  = true; /* XXX: find the flag byte */
		info->min     = FUNC2(info->base,
				    info->base + info->step * info->vidmask);
		info->max     = FUNC5(bios, volt + 0x0e);
		if (!info->max)
			info->max = FUNC0(info->base, info->base + info->step * info->vidmask);
		break;
	case 0x50:
		info->min     = FUNC5(bios, volt + 0x0a);
		info->max     = FUNC5(bios, volt + 0x0e);
		info->base    = FUNC5(bios, volt + 0x12) & 0x00ffffff;

		/* offset 4 seems to be a flag byte */
		if (FUNC5(bios, volt + 0x4) & 1) {
			info->type      = NVBIOS_VOLT_PWM;
			info->pwm_freq  = FUNC5(bios, volt + 0x5) / 1000;
			info->pwm_range = FUNC5(bios, volt + 0x16);
		} else {
			info->type    = NVBIOS_VOLT_GPIO;
			info->vidmask = FUNC3(bios, volt + 0x06);
			info->step    = FUNC4(bios, volt + 0x16);
			info->ranged  =
				!!(FUNC3(bios, volt + 0x4) & 0x2);
		}
		break;
	}
	return volt;
}