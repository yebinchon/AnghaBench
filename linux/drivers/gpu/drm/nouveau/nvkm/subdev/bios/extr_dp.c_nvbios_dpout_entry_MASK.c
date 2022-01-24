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

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*,int*,int*,int*,int*) ; 
 int FUNC1 (struct nvkm_bios*,int) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 

__attribute__((used)) static u16
FUNC3(struct nvkm_bios *bios, u8 idx,
		   u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	u16 data = FUNC0(bios, ver, hdr, cnt, len);
	if (data && idx < *cnt) {
		u16 outp = FUNC2(bios, data + *hdr + idx * *len);
		switch (*ver * !!outp) {
		case 0x20:
		case 0x21:
		case 0x30:
			*hdr = FUNC1(bios, data + 0x04);
			*len = FUNC1(bios, data + 0x05);
			*cnt = FUNC1(bios, outp + 0x04);
			break;
		case 0x40:
		case 0x41:
		case 0x42:
			*hdr = FUNC1(bios, data + 0x04);
			*cnt = 0;
			*len = 0;
			break;
		default:
			break;
		}
		return outp;
	}
	*ver = 0x00;
	return 0x0000;
}