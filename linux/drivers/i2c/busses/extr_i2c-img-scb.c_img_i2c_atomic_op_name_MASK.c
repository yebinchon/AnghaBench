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

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 char const** img_i2c_atomic_cmd_names ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static const char *FUNC2(unsigned int cmd)
{
	if (FUNC1(cmd >= FUNC0(img_i2c_atomic_cmd_names)))
		return "UNKNOWN";
	return img_i2c_atomic_cmd_names[cmd];
}