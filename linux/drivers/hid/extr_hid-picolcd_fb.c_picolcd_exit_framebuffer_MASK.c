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
struct picolcd_fb_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * picolcd; } ;
struct picolcd_data {struct fb_info* fb_info; TYPE_1__* hdev; } ;
struct fb_info {int /*<<< orphan*/  deferred_work; struct picolcd_fb_data* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_fb_update_rate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

void FUNC5(struct picolcd_data *data)
{
	struct fb_info *info = data->fb_info;
	struct picolcd_fb_data *fbdata;
	unsigned long flags;

	if (!info)
		return;

	FUNC0(&data->hdev->dev, &dev_attr_fb_update_rate);
	fbdata = info->par;

	/* disconnect framebuffer from HID dev */
	FUNC2(&fbdata->lock, flags);
	fbdata->picolcd = NULL;
	FUNC3(&fbdata->lock, flags);

	/* make sure there is no running update - thus that fbdata->picolcd
	 * once obtained under lock is guaranteed not to get free() under
	 * the feet of the deferred work */
	FUNC1(&info->deferred_work);

	data->fb_info = NULL;
	FUNC4(info);
}