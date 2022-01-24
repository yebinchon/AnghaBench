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
typedef  int u64 ;
struct qib_pportdata {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AbortInProg ; 
 int /*<<< orphan*/  InternalSDmaEnable ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ScbEmpty ; 
 int /*<<< orphan*/  ScoreBoardDrainInProg ; 
 int /*<<< orphan*/  SendDmaStatus ; 
 int /*<<< orphan*/  kr_senddmastatus ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qib_pportdata *ppd)
{
	u64 hwstatus = FUNC1(ppd->dd, kr_senddmastatus);

	return (hwstatus & FUNC0(SendDmaStatus, ScoreBoardDrainInProg)) ||
	       (hwstatus & FUNC0(SendDmaStatus, AbortInProg)) ||
	       (hwstatus & FUNC0(SendDmaStatus, InternalSDmaEnable)) ||
	       !(hwstatus & FUNC0(SendDmaStatus, ScbEmpty));
}