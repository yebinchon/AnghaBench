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
struct adf_cfg_section {int /*<<< orphan*/  list; int /*<<< orphan*/  param_head; int /*<<< orphan*/  name; } ;
struct adf_cfg_device_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  sec_list; } ;
struct adf_accel_dev {struct adf_cfg_device_data* cfg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct adf_cfg_section* FUNC1 (struct adf_accel_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adf_cfg_section* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct adf_accel_dev *accel_dev, const char *name)
{
	struct adf_cfg_device_data *cfg = accel_dev->cfg;
	struct adf_cfg_section *sec = FUNC1(accel_dev, name);

	if (sec)
		return 0;

	sec = FUNC3(sizeof(*sec), GFP_KERNEL);
	if (!sec)
		return -ENOMEM;

	FUNC5(sec->name, name, sizeof(sec->name));
	FUNC0(&sec->param_head);
	FUNC2(&cfg->lock);
	FUNC4(&sec->list, &cfg->sec_list);
	FUNC6(&cfg->lock);
	return 0;
}