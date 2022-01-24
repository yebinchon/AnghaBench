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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (struct drm_device*,int) ; 
 int* FUNC1 (struct drm_device*) ; 

u8 *
FUNC2(struct drm_device *dev)
{
	u8 *dcb = FUNC1(dev);
	if (dcb && dcb[0] >= 0x30 && dcb[1] >= 0x16) {
		u8 *conntab = FUNC0(dev, dcb[0x14]);
		if (conntab && conntab[0] >= 0x30 && conntab[0] <= 0x40)
			return conntab;
	}
	return NULL;
}