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
struct mip4_ts {int key_num; int /*<<< orphan*/  input; int /*<<< orphan*/ * key_code; } ;

/* Variables and functions */
 int MIP4_MAX_FINGERS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mip4_ts *ts)
{
	int i;

	/* Screen */
	for (i = 0; i < MIP4_MAX_FINGERS; i++) {
		FUNC1(ts->input, i);
		FUNC0(ts->input, MT_TOOL_FINGER, 0);
	}

	/* Keys */
	for (i = 0; i < ts->key_num; i++)
		FUNC2(ts->input, ts->key_code[i], 0);

	FUNC3(ts->input);
}