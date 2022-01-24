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
struct venc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VENC_F_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct venc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct venc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct venc_device *venc)
{
	int t = 1000;

	FUNC3(venc, VENC_F_CONTROL, 1<<8);
	while (FUNC2(venc, VENC_F_CONTROL) & (1<<8)) {
		if (--t == 0) {
			FUNC0("Failed to reset venc\n");
			return;
		}
	}

#ifdef CONFIG_OMAP2_DSS_SLEEP_AFTER_VENC_RESET
	/* the magical sleep that makes things work */
	/* XXX more info? What bug this circumvents? */
	msleep(20);
#endif
}