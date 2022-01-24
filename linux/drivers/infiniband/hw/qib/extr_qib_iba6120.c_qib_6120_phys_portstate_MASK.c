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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  IBCStatus ; 
 int /*<<< orphan*/  LinkTrainingState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t* qib_6120_physportstate ; 

__attribute__((used)) static u8 FUNC1(u64 ibcs)
{
	u8 state = (u8)FUNC0(ibcs, IBCStatus, LinkTrainingState);
	return qib_6120_physportstate[state];
}