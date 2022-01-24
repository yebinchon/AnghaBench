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
struct siw_cq {int dummy; } ;
struct ib_wc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct siw_cq*,struct ib_wc*) ; 

void FUNC1(struct siw_cq *cq)
{
	struct ib_wc wc;

	while (FUNC0(cq, &wc))
		;
}