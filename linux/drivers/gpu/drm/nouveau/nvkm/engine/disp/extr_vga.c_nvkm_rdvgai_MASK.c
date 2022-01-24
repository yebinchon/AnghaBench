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
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_device*,int,int) ; 
 int FUNC1 (struct nvkm_device*,int,int) ; 
 int FUNC2 (struct nvkm_device*,int,int) ; 

u8
FUNC3(struct nvkm_device *device, int head, u16 port, u8 index)
{
	if (port == 0x03c4) return FUNC2(device, head, index);
	if (port == 0x03ce) return FUNC1(device, head, index);
	if (port == 0x03d4) return FUNC0(device, head, index);
	return 0x00;
}