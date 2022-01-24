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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (struct page*) ; 

__attribute__((used)) static u32 *FUNC2(struct page *pt_page, unsigned long iova)
{
	u32 *pt = FUNC1(pt_page);

	return pt + FUNC0(iova);
}