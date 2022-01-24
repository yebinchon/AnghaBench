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
typedef  int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_ramcfg {int ramcfg_timing; int ramcfg_00_03_01; int ramcfg_00_03_02; int ramcfg_DLLoff; int ramcfg_00_03_08; int ramcfg_RON; int ramcfg_FBVDDQ; int ramcfg_00_04_02; int ramcfg_00_04_04; int ramcfg_00_04_20; int ramcfg_00_05; int ramcfg_00_06; int ramcfg_00_07; int ramcfg_00_08; int ramcfg_00_09; int ramcfg_00_0a_0f; int ramcfg_00_0a_f0; scalar_t__ ramcfg_ver; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*,int) ; 

u32
FUNC1(struct nvkm_bios *bios, u32 data, u8 size, int idx,
		struct nvbios_ramcfg *p)
{
	data += (idx * size);

	if (size < 11)
		return 0x00000000;

	p->ramcfg_ver = 0;
	p->ramcfg_timing   =  FUNC0(bios, data + 0x01);
	p->ramcfg_00_03_01 = (FUNC0(bios, data + 0x03) & 0x01) >> 0;
	p->ramcfg_00_03_02 = (FUNC0(bios, data + 0x03) & 0x02) >> 1;
	p->ramcfg_DLLoff   = (FUNC0(bios, data + 0x03) & 0x04) >> 2;
	p->ramcfg_00_03_08 = (FUNC0(bios, data + 0x03) & 0x08) >> 3;
	p->ramcfg_RON      = (FUNC0(bios, data + 0x03) & 0x10) >> 3;
	p->ramcfg_FBVDDQ   = (FUNC0(bios, data + 0x03) & 0x80) >> 7;
	p->ramcfg_00_04_02 = (FUNC0(bios, data + 0x04) & 0x02) >> 1;
	p->ramcfg_00_04_04 = (FUNC0(bios, data + 0x04) & 0x04) >> 2;
	p->ramcfg_00_04_20 = (FUNC0(bios, data + 0x04) & 0x20) >> 5;
	p->ramcfg_00_05    = (FUNC0(bios, data + 0x05) & 0xff) >> 0;
	p->ramcfg_00_06    = (FUNC0(bios, data + 0x06) & 0xff) >> 0;
	p->ramcfg_00_07    = (FUNC0(bios, data + 0x07) & 0xff) >> 0;
	p->ramcfg_00_08    = (FUNC0(bios, data + 0x08) & 0xff) >> 0;
	p->ramcfg_00_09    = (FUNC0(bios, data + 0x09) & 0xff) >> 0;
	p->ramcfg_00_0a_0f = (FUNC0(bios, data + 0x0a) & 0x0f) >> 0;
	p->ramcfg_00_0a_f0 = (FUNC0(bios, data + 0x0a) & 0xf0) >> 4;

	return data;
}