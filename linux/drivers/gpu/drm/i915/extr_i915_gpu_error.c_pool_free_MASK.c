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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct pagevec*,struct page*) ; 
 scalar_t__ FUNC2 (struct pagevec*) ; 
 struct page* FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(struct pagevec *pv, void *addr)
{
	struct page *p = FUNC3(addr);

	if (FUNC2(pv))
		FUNC1(pv, p);
	else
		FUNC0(p);
}