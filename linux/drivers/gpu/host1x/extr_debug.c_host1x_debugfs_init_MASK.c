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
struct host1x {struct dentry* debugfs; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUSR ; 
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct host1x*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  host1x_debug_all_fops ; 
 int /*<<< orphan*/  host1x_debug_fops ; 
 int /*<<< orphan*/  host1x_debug_force_timeout_channel ; 
 int /*<<< orphan*/  host1x_debug_force_timeout_pid ; 
 int /*<<< orphan*/  host1x_debug_force_timeout_val ; 
 int /*<<< orphan*/  host1x_debug_trace_cmdbuf ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*,struct dentry*) ; 

__attribute__((used)) static void FUNC4(struct host1x *host1x)
{
	struct dentry *de = FUNC0("tegra-host1x", NULL);

	/* Store the created entry */
	host1x->debugfs = de;

	FUNC1("status", S_IRUGO, de, host1x, &host1x_debug_fops);
	FUNC1("status_all", S_IRUGO, de, host1x,
			    &host1x_debug_all_fops);

	FUNC2("trace_cmdbuf", S_IRUGO|S_IWUSR, de,
			   &host1x_debug_trace_cmdbuf);

	FUNC3(host1x, de);

	FUNC2("force_timeout_pid", S_IRUGO|S_IWUSR, de,
			   &host1x_debug_force_timeout_pid);
	FUNC2("force_timeout_val", S_IRUGO|S_IWUSR, de,
			   &host1x_debug_force_timeout_val);
	FUNC2("force_timeout_channel", S_IRUGO|S_IWUSR, de,
			   &host1x_debug_force_timeout_channel);
}