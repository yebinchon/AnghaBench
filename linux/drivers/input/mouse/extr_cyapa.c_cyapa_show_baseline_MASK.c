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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int /*<<< orphan*/  state_sync_lock; TYPE_1__* ops; scalar_t__ operational; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* show_baseline ) (struct device*,struct device_attribute*,char*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa*) ; 
 struct cyapa* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,struct device_attribute*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct cyapa *cyapa = FUNC2(dev);
	ssize_t error;

	error = FUNC3(&cyapa->state_sync_lock);
	if (error)
		return error;

	if (cyapa->operational) {
		FUNC1(cyapa);
		error = cyapa->ops->show_baseline(dev, attr, buf);
		FUNC0(cyapa);
	} else {
		error = -EBUSY;  /* Still running in bootloader mode. */
	}

	FUNC4(&cyapa->state_sync_lock);
	return error;
}