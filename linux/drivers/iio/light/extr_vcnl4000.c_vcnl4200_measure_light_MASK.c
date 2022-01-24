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
struct vcnl4000_data {int /*<<< orphan*/  vcnl4200_al; } ;

/* Variables and functions */
 int FUNC0 (struct vcnl4000_data*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC1(struct vcnl4000_data *data, int *val)
{
	return FUNC0(data, &data->vcnl4200_al, val);
}