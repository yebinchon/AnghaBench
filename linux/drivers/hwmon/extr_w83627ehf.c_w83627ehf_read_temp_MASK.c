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
typedef  int u16 ;
struct w83627ehf_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct w83627ehf_data*,int) ; 

__attribute__((used)) static u16 FUNC2(struct w83627ehf_data *data, u16 reg)
{
	u16 res;

	res = FUNC1(data, reg);
	if (!FUNC0(reg))
		res <<= 8;

	return res;
}