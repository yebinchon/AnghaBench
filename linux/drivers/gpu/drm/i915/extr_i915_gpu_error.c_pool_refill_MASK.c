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
struct pagevec {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pagevec*,struct page*) ; 
 scalar_t__ FUNC2 (struct pagevec*) ; 

__attribute__((used)) static int FUNC3(struct pagevec *pv, gfp_t gfp)
{
	while (FUNC2(pv)) {
		struct page *p;

		p = FUNC0(gfp);
		if (!p)
			return -ENOMEM;

		FUNC1(pv, p);
	}

	return 0;
}