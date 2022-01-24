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
struct cyapa {int /*<<< orphan*/  state_sync_lock; int /*<<< orphan*/  gen; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa*) ; 
 struct cyapa* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct cyapa *cyapa = FUNC1(dev);
	int size;
	int error;

	error = FUNC2(&cyapa->state_sync_lock);
	if (error)
		return error;

	size = FUNC4(buf, PAGE_SIZE, "gen%d %s\n",
			cyapa->gen, FUNC0(cyapa));

	FUNC3(&cyapa->state_sync_lock);
	return size;
}