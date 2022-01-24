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
struct amd64_pvt {int /*<<< orphan*/  ecc_sym_sz; scalar_t__ umc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 

__attribute__((used)) static void FUNC5(struct amd64_pvt *pvt)
{
	if (pvt->umc)
		FUNC1(pvt);
	else
		FUNC0(pvt);

	FUNC4(1, "  DramHoleValid: %s\n", FUNC3(pvt) ? "yes" : "no");

	FUNC2("using x%u syndromes.\n", pvt->ecc_sym_sz);
}