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
struct tc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_BUSY ; 
 int /*<<< orphan*/  DP0_AUXSTATUS ; 
 int FUNC0 (struct tc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct tc_data *tc)
{
	return FUNC0(tc, DP0_AUXSTATUS, AUX_BUSY, 0, 1000, 100000);
}