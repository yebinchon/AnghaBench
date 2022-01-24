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
struct lm93_data {int** block9; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t LM93_PWM_CTL2 ; 
 struct lm93_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	int nr = (FUNC2(attr))->index;
	struct lm93_data *data = FUNC0(dev);
	u8 ctl2;
	long rc;

	ctl2 = data->block9[nr][LM93_PWM_CTL2];
	if (ctl2 & 0x01) /* manual override enabled ? */
		rc = ((ctl2 & 0xF0) == 0xF0) ? 0 : 1;
	else
		rc = 2;
	return FUNC1(buf, "%ld\n", rc);
}