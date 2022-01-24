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
struct fsi_master_acf {int external_mode; int /*<<< orphan*/  master; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct fsi_master_acf* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct fsi_master_acf *master = FUNC0(dev);
	unsigned long val;
	bool external_mode;
	int err;

	err = FUNC5(buf, 0, &val);
	if (err)
		return err;

	external_mode = !!val;

	FUNC6(&master->lock);

	if (external_mode == master->external_mode) {
		FUNC7(&master->lock);
		return count;
	}

	master->external_mode = external_mode;
	if (master->external_mode) {
		FUNC3(master);
		FUNC2(master);
	} else
		FUNC1(master);

	FUNC7(&master->lock);

	FUNC4(&master->master);

	return count;
}