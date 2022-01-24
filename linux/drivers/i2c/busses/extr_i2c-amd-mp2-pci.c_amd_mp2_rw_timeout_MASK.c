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
struct amd_i2c_common {int /*<<< orphan*/  reqcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_i2c_common*) ; 
 int /*<<< orphan*/  i2c_none ; 

void FUNC1(struct amd_i2c_common *i2c_common)
{
	i2c_common->reqcmd = i2c_none;
	FUNC0(i2c_common);
}