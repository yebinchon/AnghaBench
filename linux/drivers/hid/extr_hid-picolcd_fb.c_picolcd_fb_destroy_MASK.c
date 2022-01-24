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
typedef  int /*<<< orphan*/  u8 ;
struct picolcd_fb_data {int /*<<< orphan*/ * picolcd; } ;
struct TYPE_2__ {scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; struct picolcd_fb_data* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fb_info *info)
{
	struct picolcd_fb_data *fbdata = info->par;

	/* make sure no work is deferred */
	FUNC1(info);

	/* No thridparty should ever unregister our framebuffer! */
	FUNC0(fbdata->picolcd != NULL);

	FUNC3((u8 *)info->fix.smem_start);
	FUNC2(info);
}