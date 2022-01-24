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
struct page_list {int /*<<< orphan*/  page; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page_list*) ; 
 struct page_list* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page_list *FUNC3(gfp_t gfp)
{
	struct page_list *pl;

	pl = FUNC2(sizeof(*pl), gfp);
	if (!pl)
		return NULL;

	pl->page = FUNC0(gfp);
	if (!pl->page) {
		FUNC1(pl);
		return NULL;
	}

	return pl;
}