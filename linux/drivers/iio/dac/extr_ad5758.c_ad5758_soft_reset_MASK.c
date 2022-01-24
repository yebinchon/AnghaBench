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
struct ad5758_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_KEY ; 
 int /*<<< orphan*/  AD5758_KEY_CODE_RESET_1 ; 
 int /*<<< orphan*/  AD5758_KEY_CODE_RESET_2 ; 
 int FUNC0 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct ad5758_state *st)
{
	int ret;

	ret = FUNC0(st, AD5758_KEY, AD5758_KEY_CODE_RESET_1);
	if (ret < 0)
		return ret;

	ret = FUNC0(st, AD5758_KEY, AD5758_KEY_CODE_RESET_2);

	/* Perform a software reset and wait at least 100us */
	FUNC1(100, 1000);

	return ret;
}