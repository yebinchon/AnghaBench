#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct lm93_data {int* auto_pwm_min_hyst; int** block9; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t LM93_PWM_CTL4 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM93_PWM_MAP_HI_FREQ ; 
 int /*<<< orphan*/  LM93_PWM_MAP_LO_FREQ ; 
 struct lm93_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	int nr = (FUNC3(attr))->index;
	u8 reg, ctl4;
	struct lm93_data *data = FUNC1(dev);
	reg = data->auto_pwm_min_hyst[nr/2] >> 4 & 0x0f;
	ctl4 = data->block9[nr][LM93_PWM_CTL4];
	return FUNC2(buf, "%d\n", FUNC0(reg, (ctl4 & 0x07) ?
				LM93_PWM_MAP_LO_FREQ : LM93_PWM_MAP_HI_FREQ));
}