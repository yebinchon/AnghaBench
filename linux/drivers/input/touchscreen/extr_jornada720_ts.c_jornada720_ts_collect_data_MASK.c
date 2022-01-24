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
struct jornada_ts {void** y_data; void** x_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXDUMMY ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct jornada_ts *jornada_ts)
{
	/* 3 low word X samples */
	jornada_ts->x_data[0] = FUNC0(TXDUMMY);
	jornada_ts->x_data[1] = FUNC0(TXDUMMY);
	jornada_ts->x_data[2] = FUNC0(TXDUMMY);

	/* 3 low word Y samples */
	jornada_ts->y_data[0] = FUNC0(TXDUMMY);
	jornada_ts->y_data[1] = FUNC0(TXDUMMY);
	jornada_ts->y_data[2] = FUNC0(TXDUMMY);

	/* combined x samples bits */
	jornada_ts->x_data[3] = FUNC0(TXDUMMY);

	/* combined y samples bits */
	jornada_ts->y_data[3] = FUNC0(TXDUMMY);
}