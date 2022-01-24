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
typedef  scalar_t__ u32 ;
struct send_context {int /*<<< orphan*/  credit_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct send_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct send_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct send_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct send_context*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4(struct send_context *sc, u32 needint)
{
	if (needint)
		FUNC0(sc);
	else
		FUNC1(sc);
	FUNC3(sc, needint, sc->credit_ctrl);
	if (needint)
		FUNC2(sc);
}