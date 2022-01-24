#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ulptx_walk {int /*<<< orphan*/  nents; TYPE_1__* sgl; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_nsge; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULP_TX_SC_DSGL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct ulptx_walk *walk)
{
	walk->sgl->cmd_nsge = FUNC2(FUNC0(ULP_TX_SC_DSGL) |
			      FUNC1(walk->nents));
}