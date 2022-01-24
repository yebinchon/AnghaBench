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
struct va_format {int dummy; } ;
struct drm_printer {struct drm_print_iterator* arg; } ;
struct drm_print_iterator {size_t remain; scalar_t__ offset; scalar_t__ start; scalar_t__ data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t,int) ; 
 size_t FUNC3 (char*,size_t,char*,struct va_format*) ; 

void FUNC4(struct drm_printer *p, struct va_format *vaf)
{
	struct drm_print_iterator *iterator = p->arg;
	size_t len;
	char *buf;

	if (!iterator->remain)
		return;

	/* Figure out how big the string will be */
	len = FUNC3(NULL, 0, "%pV", vaf);

	/* This is the easiest path, we've already advanced beyond the offset */
	if (iterator->offset + len <= iterator->start) {
		iterator->offset += len;
		return;
	}

	/* Then check if we can directly copy into the target buffer */
	if ((iterator->offset >= iterator->start) && (len < iterator->remain)) {
		ssize_t pos = iterator->offset - iterator->start;

		FUNC3(((char *) iterator->data) + pos,
			iterator->remain, "%pV", vaf);

		iterator->offset += len;
		iterator->remain -= len;

		return;
	}

	/*
	 * Finally, hit the slow path and make a temporary string to copy over
	 * using _drm_puts_coredump
	 */
	buf = FUNC2(len + 1, GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
	if (!buf)
		return;

	FUNC3(buf, len + 1, "%pV", vaf);
	FUNC0(p, (const char *) buf);

	FUNC1(buf);
}