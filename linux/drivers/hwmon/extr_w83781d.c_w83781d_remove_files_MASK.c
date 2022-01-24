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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w83781d_group ; 
 int /*<<< orphan*/  w83781d_group_in1 ; 
 int /*<<< orphan*/  w83781d_group_in78 ; 
 int /*<<< orphan*/  w83781d_group_other ; 
 int /*<<< orphan*/  w83781d_group_pwm12 ; 
 int /*<<< orphan*/  w83781d_group_pwm34 ; 
 int /*<<< orphan*/  w83781d_group_temp3 ; 

__attribute__((used)) static void FUNC1(struct device *dev)
{
	FUNC0(&dev->kobj, &w83781d_group);
	FUNC0(&dev->kobj, &w83781d_group_in1);
	FUNC0(&dev->kobj, &w83781d_group_in78);
	FUNC0(&dev->kobj, &w83781d_group_temp3);
	FUNC0(&dev->kobj, &w83781d_group_pwm12);
	FUNC0(&dev->kobj, &w83781d_group_pwm34);
	FUNC0(&dev->kobj, &w83781d_group_other);
}