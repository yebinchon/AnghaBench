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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(struct nvkm_device *device, u16 class, u32 mthd, u32 data)
{
	switch (class & 0x00ff) {
	case 0x97:
	case 0xc0:
		switch (mthd) {
		case 0x1528:
			FUNC0(device, data);
			return true;
		default:
			break;
		}
		break;
	default:
		break;
	}
	return false;
}