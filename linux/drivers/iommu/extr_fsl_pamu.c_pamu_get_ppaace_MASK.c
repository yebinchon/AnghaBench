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
struct paace {int dummy; } ;

/* Variables and functions */
 int PAACE_NUMBER_ENTRIES ; 
 struct paace* ppaact ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static struct paace *FUNC1(int liodn)
{
	if (!ppaact || liodn >= PAACE_NUMBER_ENTRIES) {
		FUNC0("PPAACT doesn't exist\n");
		return NULL;
	}

	return &ppaact[liodn];
}