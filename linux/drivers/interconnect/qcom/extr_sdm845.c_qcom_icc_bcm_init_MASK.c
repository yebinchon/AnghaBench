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
struct qcom_icc_node {size_t num_bcms; struct qcom_icc_bcm** bcms; } ;
struct TYPE_2__ {int /*<<< orphan*/  reserved; int /*<<< orphan*/  vcd; int /*<<< orphan*/  width; int /*<<< orphan*/  unit; } ;
struct qcom_icc_bcm {int num_nodes; struct qcom_icc_node** nodes; TYPE_1__ aux_data; int /*<<< orphan*/  name; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;
struct bcm_db {int /*<<< orphan*/  reserved; int /*<<< orphan*/  vcd; int /*<<< orphan*/  width; int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bcm_db const*) ; 
 int FUNC1 (struct bcm_db const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm_db* FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct qcom_icc_bcm *bcm, struct device *dev)
{
	struct qcom_icc_node *qn;
	const struct bcm_db *data;
	size_t data_count;
	int i;

	bcm->addr = FUNC2(bcm->name);
	if (!bcm->addr) {
		FUNC4(dev, "%s could not find RPMh address\n",
			bcm->name);
		return -EINVAL;
	}

	data = FUNC3(bcm->name, &data_count);
	if (FUNC0(data)) {
		FUNC4(dev, "%s command db read error (%ld)\n",
			bcm->name, FUNC1(data));
		return FUNC1(data);
	}
	if (!data_count) {
		FUNC4(dev, "%s command db missing or partial aux data\n",
			bcm->name);
		return -EINVAL;
	}

	bcm->aux_data.unit = FUNC6(data->unit);
	bcm->aux_data.width = FUNC5(data->width);
	bcm->aux_data.vcd = data->vcd;
	bcm->aux_data.reserved = data->reserved;

	/*
	 * Link Qnodes to their respective BCMs
	 */
	for (i = 0; i < bcm->num_nodes; i++) {
		qn = bcm->nodes[i];
		qn->bcms[qn->num_bcms] = bcm;
		qn->num_bcms++;
	}

	return 0;
}