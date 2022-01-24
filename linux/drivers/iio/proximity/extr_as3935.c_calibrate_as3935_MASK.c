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
struct as3935_state {int tune_cap; int nflwdth_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS3935_CALIBRATE ; 
 int /*<<< orphan*/  AS3935_DEFAULTS ; 
 int /*<<< orphan*/  AS3935_NFLWDTH ; 
 int /*<<< orphan*/  AS3935_TUNE_CAP ; 
 int FUNC0 (int) ; 
 int TUNE_CAP_DIV ; 
 int /*<<< orphan*/  FUNC1 (struct as3935_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct as3935_state *st)
{
	FUNC1(st, AS3935_DEFAULTS, 0x96);
	FUNC1(st, AS3935_CALIBRATE, 0x96);
	FUNC1(st, AS3935_TUNE_CAP,
		FUNC0(5) | (st->tune_cap / TUNE_CAP_DIV));

	FUNC2(2);
	FUNC1(st, AS3935_TUNE_CAP, (st->tune_cap / TUNE_CAP_DIV));
	FUNC1(st, AS3935_NFLWDTH, st->nflwdth_reg);
}