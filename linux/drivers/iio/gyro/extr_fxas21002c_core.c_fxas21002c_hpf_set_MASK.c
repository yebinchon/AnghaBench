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
struct fxas21002c_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SEL ; 
 int FUNC0 (struct fxas21002c_data*,int) ; 
 int FUNC1 (struct fxas21002c_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct fxas21002c_data *data, int sel)
{
	int sel_bits;

	sel_bits = FUNC0(data, sel);
	if (sel_bits < 0)
		return sel_bits;

	return FUNC1(data, F_SEL, sel_bits);
}