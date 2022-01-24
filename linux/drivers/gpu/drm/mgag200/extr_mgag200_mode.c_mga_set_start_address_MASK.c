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
typedef  int u32 ;
struct mga_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct mga_device* dev_private; } ;

/* Variables and functions */
 int MGAREG_CRTCEXT_DATA ; 
 int /*<<< orphan*/  MGAREG_CRTCEXT_INDEX ; 
 int MGAREG_VCOUNT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc, unsigned offset)
{
	struct mga_device *mdev = crtc->dev->dev_private;
	u32 addr;
	int count;
	u8 crtcext0;

	while (FUNC0(0x1fda) & 0x08);
	while (!(FUNC0(0x1fda) & 0x08));

	count = FUNC0(MGAREG_VCOUNT) + 2;
	while (FUNC0(MGAREG_VCOUNT) < count);

	FUNC2(MGAREG_CRTCEXT_INDEX, 0);
	crtcext0 = FUNC0(MGAREG_CRTCEXT_DATA);
	crtcext0 &= 0xB0;
	addr = offset / 8;
	/* Can't store addresses any higher than that...
	   but we also don't have more than 16MB of memory, so it should be fine. */
	FUNC1(addr > 0x1fffff);
	crtcext0 |= (!!(addr & (1<<20)))<<6;
	FUNC3(0x0d, (u8)(addr & 0xff));
	FUNC3(0x0c, (u8)(addr >> 8) & 0xff);
	FUNC4(0x0, ((u8)(addr >> 16) & 0xf) | crtcext0);
}