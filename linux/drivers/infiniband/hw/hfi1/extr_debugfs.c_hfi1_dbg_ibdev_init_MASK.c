#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct hfi1_pportdata {int unit; int num_pports; struct hfi1_pportdata* pport; int /*<<< orphan*/  hfi1_ibdev_link; struct dentry* hfi1_ibdev_dbg; } ;
struct hfi1_ibdev {int unit; int num_pports; struct hfi1_ibdev* pport; int /*<<< orphan*/  hfi1_ibdev_link; struct dentry* hfi1_ibdev_dbg; } ;
struct hfi1_devdata {int unit; int num_pports; struct hfi1_devdata* pport; int /*<<< orphan*/  hfi1_ibdev_link; struct dentry* hfi1_ibdev_dbg; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  link ;
struct TYPE_14__ {int /*<<< orphan*/  write; } ;
struct TYPE_13__ {char* name; TYPE_2__ ops; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 TYPE_2__ _ctx_stats_file_ops ; 
 TYPE_2__ _opcode_stats_file_ops ; 
 TYPE_2__ _pios_file_ops ; 
 TYPE_2__ _qp_stats_file_ops ; 
 TYPE_2__ _rcds_file_ops ; 
 TYPE_2__ _sdes_file_ops ; 
 TYPE_2__ _sdma_cpu_list_file_ops ; 
 TYPE_2__ _tx_opcode_stats_file_ops ; 
 char* FUNC1 () ; 
 TYPE_1__* cntr_ops ; 
 struct hfi1_pportdata* FUNC2 (struct hfi1_pportdata*) ; 
 struct dentry* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,struct hfi1_pportdata*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hfi1_dbg_root ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_pportdata*) ; 
 TYPE_1__* port_cntr_ops ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 

void FUNC8(struct hfi1_ibdev *ibd)
{
	char name[sizeof("port0counters") + 1];
	char link[10];
	struct hfi1_devdata *dd = FUNC2(ibd);
	struct hfi1_pportdata *ppd;
	struct dentry *root;
	int unit = dd->unit;
	int i, j;

	if (!hfi1_dbg_root)
		return;
	FUNC7(name, sizeof(name), "%s_%d", FUNC1(), unit);
	FUNC7(link, sizeof(link), "%d", unit);
	root = FUNC3(name, hfi1_dbg_root);
	ibd->hfi1_ibdev_dbg = root;

	ibd->hfi1_ibdev_link =
		FUNC5(link, hfi1_dbg_root, name);

	FUNC4("opcode_stats", 0444, root, ibd,
			    &_opcode_stats_file_ops);
	FUNC4("tx_opcode_stats", 0444, root, ibd,
			    &_tx_opcode_stats_file_ops);
	FUNC4("ctx_stats", 0444, root, ibd, &_ctx_stats_file_ops);
	FUNC4("qp_stats", 0444, root, ibd, &_qp_stats_file_ops);
	FUNC4("sdes", 0444, root, ibd, &_sdes_file_ops);
	FUNC4("rcds", 0444, root, ibd, &_rcds_file_ops);
	FUNC4("pios", 0444, root, ibd, &_pios_file_ops);
	FUNC4("sdma_cpu_list", 0444, root, ibd,
			    &_sdma_cpu_list_file_ops);

	/* dev counter files */
	for (i = 0; i < FUNC0(cntr_ops); i++)
		FUNC4(cntr_ops[i].name, 0444, root, dd,
				    &cntr_ops[i].ops);

	/* per port files */
	for (ppd = dd->pport, j = 0; j < dd->num_pports; j++, ppd++)
		for (i = 0; i < FUNC0(port_cntr_ops); i++) {
			FUNC7(name,
				 sizeof(name),
				 port_cntr_ops[i].name,
				 j + 1);
			FUNC4(name,
					    !port_cntr_ops[i].ops.write ?
						    S_IRUGO :
						    S_IRUGO | S_IWUSR,
					    root, ppd, &port_cntr_ops[i].ops);
		}

	FUNC6(ibd);
}