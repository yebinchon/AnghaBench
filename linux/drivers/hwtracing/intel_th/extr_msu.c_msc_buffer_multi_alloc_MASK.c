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
struct msc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msc*) ; 
 int /*<<< orphan*/  FUNC1 (struct msc*) ; 
 int FUNC2 (struct msc*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct msc *msc, unsigned long *nr_pages,
				  unsigned int nr_wins)
{
	int ret, i;

	for (i = 0; i < nr_wins; i++) {
		ret = FUNC2(msc, nr_pages[i]);
		if (ret) {
			FUNC0(msc);
			return ret;
		}
	}

	FUNC1(msc);

	return 0;
}