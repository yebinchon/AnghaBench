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
typedef  int u32 ;
struct rxe_deth {int /*<<< orphan*/  sqp; } ;

/* Variables and functions */
 int DETH_SQP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(void *arg, u32 sqp)
{
	struct rxe_deth *deth = arg;

	deth->sqp = FUNC0(DETH_SQP_MASK & sqp);
}