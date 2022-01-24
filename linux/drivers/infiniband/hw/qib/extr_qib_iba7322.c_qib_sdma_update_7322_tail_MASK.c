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
struct qib_pportdata {int /*<<< orphan*/  sdma_descq_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  krp_senddmatail ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct qib_pportdata *ppd, u16 tail)
{
	/* Commit writes to memory and advance the tail on the chip */
	FUNC1();
	ppd->sdma_descq_tail = tail;
	FUNC0(ppd, krp_senddmatail, tail);
}