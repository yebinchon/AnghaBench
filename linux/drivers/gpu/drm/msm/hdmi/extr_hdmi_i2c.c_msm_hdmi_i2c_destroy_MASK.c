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
struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_i2c_adapter*) ; 
 struct hdmi_i2c_adapter* FUNC2 (struct i2c_adapter*) ; 

void FUNC3(struct i2c_adapter *i2c)
{
	struct hdmi_i2c_adapter *hdmi_i2c = FUNC2(i2c);
	FUNC0(i2c);
	FUNC1(hdmi_i2c);
}