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
struct protection_domain {int glx; scalar_t__ gcr3_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct protection_domain *domain)
{
	if (domain->glx == 2)
		FUNC2(domain->gcr3_tbl);
	else if (domain->glx == 1)
		FUNC1(domain->gcr3_tbl);
	else
		FUNC0(domain->glx != 0);

	FUNC3((unsigned long)domain->gcr3_tbl);
}