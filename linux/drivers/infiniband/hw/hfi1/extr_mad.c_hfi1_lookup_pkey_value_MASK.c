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
typedef  int /*<<< orphan*/  u16 ;
struct hfi1_pportdata {int /*<<< orphan*/ * pkeys; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct hfi1_pportdata* FUNC1 (struct hfi1_ibport*) ; 

__attribute__((used)) static u16 FUNC2(struct hfi1_ibport *ibp, int pkey_idx)
{
	struct hfi1_pportdata *ppd = FUNC1(ibp);

	if (pkey_idx < FUNC0(ppd->pkeys))
		return ppd->pkeys[pkey_idx];

	return 0;
}