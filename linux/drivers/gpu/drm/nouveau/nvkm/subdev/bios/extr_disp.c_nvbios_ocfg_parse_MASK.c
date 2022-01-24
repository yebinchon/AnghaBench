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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_ocfg {void** clkcmp; void* flags; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_bios*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 void* FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u16
FUNC3(struct nvkm_bios *bios, u16 outp, u8 idx,
		  u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_ocfg *info)
{
	u16 data = FUNC0(bios, outp, idx, ver, hdr, cnt, len);
	if (data) {
		info->proto     = FUNC1(bios, data + 0x00);
		info->flags     = FUNC2(bios, data + 0x01);
		info->clkcmp[0] = FUNC2(bios, data + 0x02);
		info->clkcmp[1] = FUNC2(bios, data + 0x04);
	}
	return data;
}