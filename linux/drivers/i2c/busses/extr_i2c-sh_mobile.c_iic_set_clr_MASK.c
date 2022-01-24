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
struct sh_mobile_i2c_data {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct sh_mobile_i2c_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*,int,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct sh_mobile_i2c_data *pd, int offs,
			unsigned char set, unsigned char clr)
{
	FUNC1(pd, offs, (FUNC0(pd, offs) | set) & ~clr);
}