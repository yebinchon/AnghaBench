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
typedef  int /*<<< orphan*/  u32 ;
struct rxe_ah {int dummy; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_ah*) ; 
 struct rxe_ah* FUNC1 (struct ib_ah*) ; 

__attribute__((used)) static void FUNC2(struct ib_ah *ibah, u32 flags)
{
	struct rxe_ah *ah = FUNC1(ibah);

	FUNC0(ah);
}