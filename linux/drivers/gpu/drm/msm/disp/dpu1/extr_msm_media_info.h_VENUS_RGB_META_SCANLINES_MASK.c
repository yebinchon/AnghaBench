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

/* Variables and functions */
#define  COLOR_FMT_RGB565_UBWC 130 
#define  COLOR_FMT_RGBA1010102_UBWC 129 
#define  COLOR_FMT_RGBA8888_UBWC 128 
 unsigned int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static unsigned int FUNC2(int color_fmt, int height)
{
	int rgb_meta_scanlines;

	if (!height)
		return 0;

	switch (color_fmt) {
	case COLOR_FMT_RGBA8888_UBWC:
	case COLOR_FMT_RGBA1010102_UBWC:
	case COLOR_FMT_RGB565_UBWC:
		rgb_meta_scanlines = FUNC1(height, 4);
		return FUNC0(rgb_meta_scanlines, 16);
	}

	return 0;
}