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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int /*<<< orphan*/  state_sync_lock; int /*<<< orphan*/  fw_min_ver; int /*<<< orphan*/  fw_maj_ver; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct cyapa* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	int error;
	struct cyapa *cyapa = FUNC0(dev);

	error = FUNC1(&cyapa->state_sync_lock);
	if (error)
		return error;
	error = FUNC3(buf, PAGE_SIZE, "%d.%d\n", cyapa->fw_maj_ver,
			 cyapa->fw_min_ver);
	FUNC2(&cyapa->state_sync_lock);
	return error;
}