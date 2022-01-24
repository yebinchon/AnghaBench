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
typedef  scalar_t__ u32 ;
struct regmap_field {int dummy; } ;
struct hwspinlock {struct regmap_field* priv; } ;

/* Variables and functions */
 scalar_t__ QCOM_MUTEX_APPS_PROC_ID ; 
 int FUNC0 (struct regmap_field*,scalar_t__*) ; 
 int FUNC1 (struct regmap_field*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct hwspinlock *lock)
{
	struct regmap_field *field = lock->priv;
	u32 lock_owner;
	int ret;

	ret = FUNC1(field, QCOM_MUTEX_APPS_PROC_ID);
	if (ret)
		return ret;

	ret = FUNC0(field, &lock_owner);
	if (ret)
		return ret;

	return lock_owner == QCOM_MUTEX_APPS_PROC_ID;
}