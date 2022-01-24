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
typedef  int u8 ;
struct svc_debugfs_pwrmon_rail {int id; struct gb_svc* svc; int /*<<< orphan*/ * name; } ;
struct gb_svc_pwrmon_rail_names_get_response {int id; struct gb_svc* svc; int /*<<< orphan*/ * name; } ;
struct gb_svc {struct svc_debugfs_pwrmon_rail* pwrmon_rails; struct dentry* debugfs_dentry; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  fname ;

/* Variables and functions */
 int GB_SVC_PWRMON_MAX_RAIL_COUNT ; 
 int GB_SVC_PWRMON_RAIL_NAME_BUFSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct svc_debugfs_pwrmon_rail*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct gb_svc*,int*) ; 
 scalar_t__ FUNC5 (struct gb_svc*,struct svc_debugfs_pwrmon_rail*,size_t) ; 
 struct svc_debugfs_pwrmon_rail* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_debugfs_pwrmon_rail*) ; 
 struct svc_debugfs_pwrmon_rail* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwrmon_debugfs_current_fops ; 
 int /*<<< orphan*/  pwrmon_debugfs_power_fops ; 
 int /*<<< orphan*/  pwrmon_debugfs_voltage_fops ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC10(struct gb_svc *svc)
{
	int i;
	size_t bufsize;
	struct dentry *dent;
	struct gb_svc_pwrmon_rail_names_get_response *rail_names;
	u8 rail_count;

	dent = FUNC1("pwrmon", svc->debugfs_dentry);
	if (FUNC0(dent))
		return;

	if (FUNC4(svc, &rail_count))
		goto err_pwrmon_debugfs;

	if (!rail_count || rail_count > GB_SVC_PWRMON_MAX_RAIL_COUNT)
		goto err_pwrmon_debugfs;

	bufsize = sizeof(*rail_names) +
		GB_SVC_PWRMON_RAIL_NAME_BUFSIZE * rail_count;

	rail_names = FUNC8(bufsize, GFP_KERNEL);
	if (!rail_names)
		goto err_pwrmon_debugfs;

	svc->pwrmon_rails = FUNC6(rail_count, sizeof(*svc->pwrmon_rails),
				    GFP_KERNEL);
	if (!svc->pwrmon_rails)
		goto err_pwrmon_debugfs_free;

	if (FUNC5(svc, rail_names, bufsize))
		goto err_pwrmon_debugfs_free;

	for (i = 0; i < rail_count; i++) {
		struct dentry *dir;
		struct svc_debugfs_pwrmon_rail *rail = &svc->pwrmon_rails[i];
		char fname[GB_SVC_PWRMON_RAIL_NAME_BUFSIZE];

		FUNC9(fname, sizeof(fname), "%s",
			 (char *)&rail_names->name[i]);

		rail->id = i;
		rail->svc = svc;

		dir = FUNC1(fname, dent);
		FUNC2("voltage_now", 0444, dir, rail,
				    &pwrmon_debugfs_voltage_fops);
		FUNC2("current_now", 0444, dir, rail,
				    &pwrmon_debugfs_current_fops);
		FUNC2("power_now", 0444, dir, rail,
				    &pwrmon_debugfs_power_fops);
	}

	FUNC7(rail_names);
	return;

err_pwrmon_debugfs_free:
	FUNC7(rail_names);
	FUNC7(svc->pwrmon_rails);
	svc->pwrmon_rails = NULL;

err_pwrmon_debugfs:
	FUNC3(dent);
}