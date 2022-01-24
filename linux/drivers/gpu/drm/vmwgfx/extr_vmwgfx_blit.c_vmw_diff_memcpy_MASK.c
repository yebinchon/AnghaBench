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
typedef  int /*<<< orphan*/  u8 ;
struct vmw_diff_cpy {size_t cpp; size_t line_offset; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_diff_cpy*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,size_t) ; 

void FUNC6(struct vmw_diff_cpy *diff, u8 *dest, const u8 *src,
		     size_t n)
{
	ssize_t csize, byte_len;

	if (FUNC0(FUNC2(n, diff->cpp) != n))
		return;

	/* TODO: Possibly use a single vmw_find_first_diff per line? */
	csize = FUNC4(dest, src, n, diff->cpp);
	if (csize < n) {
		FUNC3(diff, csize);
		byte_len = diff->cpp;

		/*
		 * Starting from where first difference was found, find
		 * location of last difference, and then copy.
		 */
		diff->line_offset += csize;
		dest += csize;
		src += csize;
		n -= csize;
		csize = FUNC5(dest, src, n, diff->cpp);
		if (csize >= 0) {
			byte_len += csize;
			FUNC3(diff, csize);
		}
		FUNC1(dest, src, byte_len);
	}
	diff->line_offset += n;
}