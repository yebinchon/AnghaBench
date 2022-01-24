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
struct cyapa {int electrodes_x; int electrodes_y; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GEN5_CMD_RETRIEVE_PANEL_SCAN ; 
 int /*<<< orphan*/  GEN5_PANEL_SCAN_MUTUAL_BASELINE ; 
 int /*<<< orphan*/  GEN5_PANEL_SCAN_MUTUAL_DIFFCOUNT ; 
 int /*<<< orphan*/  GEN5_PANEL_SCAN_MUTUAL_RAW_DATA ; 
 int /*<<< orphan*/  GEN5_PANEL_SCAN_SELF_BASELINE ; 
 int /*<<< orphan*/  GEN5_PANEL_SCAN_SELF_DIFFCOUNT ; 
 int /*<<< orphan*/  GEN5_PANEL_SCAN_SELF_RAW_DATA ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (struct cyapa*) ; 
 int FUNC1 (struct cyapa*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC2 (struct cyapa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cyapa*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cyapa*) ; 
 int FUNC5 (struct cyapa*) ; 
 int FUNC6 (struct cyapa*) ; 
 struct cyapa* FUNC7 (struct device*) ; 
 int FUNC8 (char*,scalar_t__,char*,int,int,int,int,int,int,int,int,int,int,int,...) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct cyapa *cyapa = FUNC7(dev);
	int gidac_mutual_max, gidac_mutual_min, gidac_mutual_ave;
	int lidac_mutual_max, lidac_mutual_min, lidac_mutual_ave;
	int gidac_self_rx, gidac_self_tx;
	int lidac_self_max, lidac_self_min, lidac_self_ave;
	int raw_cap_mutual_max, raw_cap_mutual_min, raw_cap_mutual_ave;
	int raw_cap_self_max, raw_cap_self_min, raw_cap_self_ave;
	int mutual_diffdata_max, mutual_diffdata_min, mutual_diffdata_ave;
	int self_diffdata_max, self_diffdata_min, self_diffdata_ave;
	int mutual_baseline_max, mutual_baseline_min, mutual_baseline_ave;
	int self_baseline_max, self_baseline_min, self_baseline_ave;
	int error, resume_error;
	int size;

	if (!FUNC4(cyapa))
		return -EBUSY;

	/* 1. Suspend Scanning*/
	error = FUNC6(cyapa);
	if (error)
		return error;

	/* 2.  Read global and local mutual IDAC data. */
	gidac_self_rx = gidac_self_tx = 0;
	error = FUNC1(cyapa,
				&gidac_mutual_max, &gidac_mutual_min,
				&gidac_mutual_ave, &lidac_mutual_max,
				&lidac_mutual_min, &lidac_mutual_ave);
	if (error)
		goto resume_scanning;

	/* 3.  Read global and local self IDAC data. */
	error = FUNC3(cyapa,
				&gidac_self_rx, &gidac_self_tx,
				&lidac_self_max, &lidac_self_min,
				&lidac_self_ave);
	if (error)
		goto resume_scanning;

	/* 4. Execute panel scan. It must be executed before read data. */
	error = FUNC0(cyapa);
	if (error)
		goto resume_scanning;

	/* 5. Retrieve panel scan, mutual cap raw data. */
	error = FUNC2(cyapa,
				GEN5_CMD_RETRIEVE_PANEL_SCAN,
				GEN5_PANEL_SCAN_MUTUAL_RAW_DATA,
				cyapa->electrodes_x * cyapa->electrodes_y,
				&raw_cap_mutual_max, &raw_cap_mutual_min,
				&raw_cap_mutual_ave,
				NULL);
	if (error)
		goto resume_scanning;

	/* 6. Retrieve panel scan, self cap raw data. */
	error = FUNC2(cyapa,
				GEN5_CMD_RETRIEVE_PANEL_SCAN,
				GEN5_PANEL_SCAN_SELF_RAW_DATA,
				cyapa->electrodes_x + cyapa->electrodes_y,
				&raw_cap_self_max, &raw_cap_self_min,
				&raw_cap_self_ave,
				NULL);
	if (error)
		goto resume_scanning;

	/* 7. Retrieve panel scan, mutual cap diffcount raw data. */
	error = FUNC2(cyapa,
				GEN5_CMD_RETRIEVE_PANEL_SCAN,
				GEN5_PANEL_SCAN_MUTUAL_DIFFCOUNT,
				cyapa->electrodes_x * cyapa->electrodes_y,
				&mutual_diffdata_max, &mutual_diffdata_min,
				&mutual_diffdata_ave,
				NULL);
	if (error)
		goto resume_scanning;

	/* 8. Retrieve panel scan, self cap diffcount raw data. */
	error = FUNC2(cyapa,
				GEN5_CMD_RETRIEVE_PANEL_SCAN,
				GEN5_PANEL_SCAN_SELF_DIFFCOUNT,
				cyapa->electrodes_x + cyapa->electrodes_y,
				&self_diffdata_max, &self_diffdata_min,
				&self_diffdata_ave,
				NULL);
	if (error)
		goto resume_scanning;

	/* 9. Retrieve panel scan, mutual cap baseline raw data. */
	error = FUNC2(cyapa,
				GEN5_CMD_RETRIEVE_PANEL_SCAN,
				GEN5_PANEL_SCAN_MUTUAL_BASELINE,
				cyapa->electrodes_x * cyapa->electrodes_y,
				&mutual_baseline_max, &mutual_baseline_min,
				&mutual_baseline_ave,
				NULL);
	if (error)
		goto resume_scanning;

	/* 10. Retrieve panel scan, self cap baseline raw data. */
	error = FUNC2(cyapa,
				GEN5_CMD_RETRIEVE_PANEL_SCAN,
				GEN5_PANEL_SCAN_SELF_BASELINE,
				cyapa->electrodes_x + cyapa->electrodes_y,
				&self_baseline_max, &self_baseline_min,
				&self_baseline_ave,
				NULL);
	if (error)
		goto resume_scanning;

resume_scanning:
	/* 11. Resume Scanning*/
	resume_error = FUNC5(cyapa);
	if (resume_error || error)
		return resume_error ? resume_error : error;

	/* 12. Output data strings */
	size = FUNC8(buf, PAGE_SIZE, "%d %d %d %d %d %d %d %d %d %d %d ",
		gidac_mutual_min, gidac_mutual_max, gidac_mutual_ave,
		lidac_mutual_min, lidac_mutual_max, lidac_mutual_ave,
		gidac_self_rx, gidac_self_tx,
		lidac_self_min, lidac_self_max, lidac_self_ave);
	size += FUNC8(buf + size, PAGE_SIZE - size,
		"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\n",
		raw_cap_mutual_min, raw_cap_mutual_max, raw_cap_mutual_ave,
		raw_cap_self_min, raw_cap_self_max, raw_cap_self_ave,
		mutual_diffdata_min, mutual_diffdata_max, mutual_diffdata_ave,
		self_diffdata_min, self_diffdata_max, self_diffdata_ave,
		mutual_baseline_min, mutual_baseline_max, mutual_baseline_ave,
		self_baseline_min, self_baseline_max, self_baseline_ave);
	return size;
}