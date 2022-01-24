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
struct picolcd_fb_data {int force; int /*<<< orphan*/  lock; struct picolcd_data* picolcd; int /*<<< orphan*/  vbitmap; int /*<<< orphan*/  bpp; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  ready; } ;
struct picolcd_data {int /*<<< orphan*/  hdev; } ;
struct fb_info {int /*<<< orphan*/  lock; struct picolcd_fb_data* par; } ;

/* Variables and functions */
 int HID_OUTPUT_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct picolcd_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct picolcd_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct fb_info *info)
{
	int chip, tile, n;
	unsigned long flags;
	struct picolcd_fb_data *fbdata = info->par;
	struct picolcd_data *data;

	FUNC1(&info->lock);

	FUNC6(&fbdata->lock, flags);
	if (!fbdata->ready && fbdata->picolcd)
		FUNC3(fbdata->picolcd, 0);
	FUNC7(&fbdata->lock, flags);

	/*
	 * Translate the framebuffer into the format needed by the PicoLCD.
	 * See display layout above.
	 * Do this one tile after the other and push those tiles that changed.
	 *
	 * Wait for our IO to complete as otherwise we might flood the queue!
	 */
	n = 0;
	for (chip = 0; chip < 4; chip++)
		for (tile = 0; tile < 8; tile++) {
			if (!fbdata->force && !FUNC5(
					fbdata->vbitmap, fbdata->bitmap,
					fbdata->bpp, chip, tile))
				continue;
			n += 2;
			if (n >= HID_OUTPUT_FIFO_SIZE / 2) {
				FUNC6(&fbdata->lock, flags);
				data = fbdata->picolcd;
				FUNC7(&fbdata->lock, flags);
				FUNC2(&info->lock);
				if (!data)
					return;
				FUNC0(data->hdev);
				FUNC1(&info->lock);
				n = 0;
			}
			FUNC6(&fbdata->lock, flags);
			data = fbdata->picolcd;
			FUNC7(&fbdata->lock, flags);
			if (!data || FUNC4(data,
					fbdata->vbitmap, chip, tile))
				goto out;
		}
	fbdata->force = false;
	if (n) {
		FUNC6(&fbdata->lock, flags);
		data = fbdata->picolcd;
		FUNC7(&fbdata->lock, flags);
		FUNC2(&info->lock);
		if (data)
			FUNC0(data->hdev);
		return;
	}
out:
	FUNC2(&info->lock);
}