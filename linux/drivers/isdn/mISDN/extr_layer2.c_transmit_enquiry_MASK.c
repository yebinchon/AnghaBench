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
struct layer2 {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FLG_ACK_PEND ; 
 int /*<<< orphan*/  FLG_OWN_BUSY ; 
 int /*<<< orphan*/  RNR ; 
 int /*<<< orphan*/  RR ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

inline void
FUNC4(struct layer2 *l2)
{
	if (FUNC3(FLG_OWN_BUSY, &l2->flag))
		FUNC0(l2, RNR, CMD, 1);
	else
		FUNC0(l2, RR, CMD, 1);
	FUNC2(FLG_ACK_PEND, &l2->flag);
	FUNC1(l2, 9);
}