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
typedef  int /*<<< orphan*/  u32 ;
struct dss_device {int dummy; } ;
struct TYPE_2__ {void* clks; void* irqs; void* regs; } ;
struct dsi_data {int module_id; TYPE_1__ debugfs; int /*<<< orphan*/  line_buffer_size; struct dss_device* dss; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsi_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  dsi_dump_dsi_clocks ; 
 int /*<<< orphan*/  dsi_dump_dsi_irqs ; 
 int /*<<< orphan*/  dsi_dump_dsi_regs ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dss_device*,struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*) ; 
 void* FUNC8 (struct dss_device*,char*,int /*<<< orphan*/ ,struct dsi_data*) ; 
 struct dss_device* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC11(struct device *dev, struct device *master, void *data)
{
	struct dss_device *dss = FUNC9(master);
	struct dsi_data *dsi = FUNC2(dev);
	char name[10];
	u32 rev;
	int r;

	dsi->dss = dss;

	FUNC4(dss, dsi);

	r = FUNC6(dsi);
	if (r)
		return r;

	rev = FUNC5(dsi, DSI_REVISION);
	FUNC1(dev, "OMAP DSI rev %d.%d\n",
	       FUNC0(rev, 7, 4), FUNC0(rev, 3, 0));

	dsi->line_buffer_size = FUNC3(dsi);

	FUNC7(dsi);

	FUNC10(name, sizeof(name), "dsi%u_regs", dsi->module_id + 1);
	dsi->debugfs.regs = FUNC8(dss, name,
						    dsi_dump_dsi_regs, dsi);
#ifdef CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS
	snprintf(name, sizeof(name), "dsi%u_irqs", dsi->module_id + 1);
	dsi->debugfs.irqs = dss_debugfs_create_file(dss, name,
						    dsi_dump_dsi_irqs, dsi);
#endif
	FUNC10(name, sizeof(name), "dsi%u_clks", dsi->module_id + 1);
	dsi->debugfs.clks = FUNC8(dss, name,
						    dsi_dump_dsi_clocks, dsi);

	return 0;
}