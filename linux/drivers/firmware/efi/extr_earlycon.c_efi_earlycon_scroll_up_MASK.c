#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {int height; } ;
struct TYPE_3__ {int lfb_linelength; int lfb_height; } ;

/* Variables and functions */
 unsigned long* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int) ; 
 TYPE_2__* font ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long*,int) ; 
 TYPE_1__ screen_info ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long *dst, *src;
	u16 len;
	u32 i, height;

	len = screen_info.lfb_linelength;
	height = screen_info.lfb_height;

	for (i = 0; i < height - font->height; i++) {
		dst = FUNC0(i*len, len);
		if (!dst)
			return;

		src = FUNC0((i + font->height) * len, len);
		if (!src) {
			FUNC1(dst, len);
			return;
		}

		FUNC2(dst, src, len);

		FUNC1(src, len);
		FUNC1(dst, len);
	}
}