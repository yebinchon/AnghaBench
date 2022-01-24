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
struct protection_domain {int /*<<< orphan*/  mode; scalar_t__ pt_root; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_MODE_6_LEVEL ; 
 int /*<<< orphan*/  PAGE_MODE_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (unsigned long,int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static void FUNC3(struct protection_domain *domain)
{
	unsigned long root = (unsigned long)domain->pt_root;
	struct page *freelist = NULL;

	FUNC0(domain->mode < PAGE_MODE_NONE ||
	       domain->mode > PAGE_MODE_6_LEVEL);

	freelist = FUNC2(root, domain->mode, freelist);

	FUNC1(freelist);
}