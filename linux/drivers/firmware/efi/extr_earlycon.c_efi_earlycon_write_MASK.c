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
typedef  unsigned int u32 ;
struct screen_info {unsigned int lfb_linelength; unsigned int lfb_width; unsigned int lfb_height; } ;
struct console {int dummy; } ;
struct TYPE_2__ {unsigned int width; unsigned int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 void* FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const,unsigned int) ; 
 unsigned int efi_x ; 
 unsigned int efi_y ; 
 TYPE_1__* font ; 
 struct screen_info screen_info ; 

__attribute__((used)) static void
FUNC5(struct console *con, const char *str, unsigned int num)
{
	struct screen_info *si;
	unsigned int len;
	const char *s;
	void *dst;

	si = &screen_info;
	len = si->lfb_linelength;

	while (num) {
		unsigned int linemax;
		unsigned int h, count = 0;

		for (s = str; *s && *s != '\n'; s++) {
			if (count == num)
				break;
			count++;
		}

		linemax = (si->lfb_width - efi_x) / font->width;
		if (count > linemax)
			count = linemax;

		for (h = 0; h < font->height; h++) {
			unsigned int n, x;

			dst = FUNC1((efi_y + h) * len, len);
			if (!dst)
				return;

			s = str;
			n = count;
			x = efi_x;

			while (n-- > 0) {
				FUNC4(dst + x*4, *s, h);
				x += font->width;
				s++;
			}

			FUNC3(dst, len);
		}

		num -= count;
		efi_x += count * font->width;
		str += count;

		if (num > 0 && *s == '\n') {
			efi_x = 0;
			efi_y += font->height;
			str++;
			num--;
		}

		if (efi_x + font->width > si->lfb_width) {
			efi_x = 0;
			efi_y += font->height;
		}

		if (efi_y + font->height > si->lfb_height) {
			u32 i;

			efi_y -= font->height;
			FUNC2();

			for (i = 0; i < font->height; i++)
				FUNC0(efi_y + i);
		}
	}
}