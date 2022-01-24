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
struct nvbios_perf_fan {int /*<<< orphan*/  pwm_divisor; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,scalar_t__) ; 

int
FUNC2(struct nvkm_bios *bios,
		      struct nvbios_perf_fan *fan)
{
	u8  ver, hdr, cnt, len, snr, ssz;
	u32 perf = FUNC0(bios, &ver, &hdr, &cnt, &len, &snr, &ssz);
	if (!perf)
		return -ENODEV;

	if (ver >= 0x20 && ver < 0x40 && hdr > 6)
		fan->pwm_divisor = FUNC1(bios, perf + 6);
	else
		fan->pwm_divisor = 0;

	return 0;
}