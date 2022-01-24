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
struct rs_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rs_control*) ; 

__attribute__((used)) static void FUNC1(void *element, void *pool_data)
{
	struct rs_control *rs = (struct rs_control *)element;

	if (rs)
		FUNC0(rs);
}