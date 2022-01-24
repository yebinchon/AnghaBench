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
struct videomode {unsigned long pixelclock; unsigned long hactive; unsigned long hfront_porch; unsigned long hback_porch; unsigned long hsync_len; } ;
struct malidp_se_config {unsigned long input_w; unsigned long input_h; unsigned long output_h; scalar_t__ scale_enable; } ;
struct malidp_hw_device {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 long EINVAL ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC2(struct malidp_hw_device *hwdev,
				   struct malidp_se_config *se_config,
				   struct videomode *vm)
{
	unsigned long mclk;
	unsigned long pxlclk = vm->pixelclock; /* Hz */
	unsigned long htotal = vm->hactive + vm->hfront_porch +
			       vm->hback_porch + vm->hsync_len;
	unsigned long input_size = se_config->input_w * se_config->input_h;
	unsigned long a = 10;
	long ret;

	/*
	 * mclk = max(a, 1.5) * pxlclk
	 *
	 * To avoid float calculaiton, using 15 instead of 1.5 and div by
	 * 10 to get mclk.
	 */
	if (se_config->scale_enable) {
		a = 15 * input_size / (htotal * se_config->output_h);
		if (a < 15)
			a = 15;
	}
	mclk = a * pxlclk / 10;
	ret = FUNC1(hwdev->mclk);
	if (ret < mclk) {
		FUNC0("mclk requirement of %lu kHz can't be met.\n",
				 mclk / 1000);
		return -EINVAL;
	}
	return ret;
}