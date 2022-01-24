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
typedef  int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_disp {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,int) ; 

u16
FUNC2(struct nvkm_bios *bios, u8 idx, u8 *ver, u8 *len, u8 *sub,
		  struct nvbios_disp *info)
{
	u16 data = FUNC0(bios, idx, ver, len, sub);
	if (data && *len >= 2) {
		info->data = FUNC1(bios, data + 0);
		return data;
	}
	return 0x0000;
}