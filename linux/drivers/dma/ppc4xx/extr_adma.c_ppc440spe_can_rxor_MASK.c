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
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct page**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (struct page*) ; 
 struct page** ppc440spe_rxor_srcs ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct page **srcs, int src_cnt, size_t len)
{
	int i, order = 0, state = 0;
	int idx = 0;

	if (FUNC3(!(src_cnt > 1)))
		return 0;

	FUNC1(src_cnt > FUNC0(ppc440spe_rxor_srcs));

	/* Skip holes in the source list before checking */
	for (i = 0; i < src_cnt; i++) {
		if (!srcs[i])
			continue;
		ppc440spe_rxor_srcs[idx++] = srcs[i];
	}
	src_cnt = idx;

	for (i = 1; i < src_cnt; i++) {
		char *cur_addr = FUNC2(ppc440spe_rxor_srcs[i]);
		char *old_addr = FUNC2(ppc440spe_rxor_srcs[i - 1]);

		switch (state) {
		case 0:
			if (cur_addr == old_addr + len) {
				/* direct RXOR */
				order = 1;
				state = 1;
			} else if (old_addr == cur_addr + len) {
				/* reverse RXOR */
				order = -1;
				state = 1;
			} else
				goto out;
			break;
		case 1:
			if ((i == src_cnt - 2) ||
			    (order == -1 && cur_addr != old_addr - len)) {
				order = 0;
				state = 0;
			} else if ((cur_addr == old_addr + len * order) ||
				   (cur_addr == old_addr + 2 * len) ||
				   (cur_addr == old_addr + 3 * len)) {
				state = 2;
			} else {
				order = 0;
				state = 0;
			}
			break;
		case 2:
			order = 0;
			state = 0;
			break;
		}
	}

out:
	if (state == 1 || state == 2)
		return 1;

	return 0;
}