#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int phys_port_cnt; int num_comp_vectors; unsigned long long uverbs_cmd_mask; unsigned long long uverbs_ex_cmd_mask; TYPE_1__ dev; int /*<<< orphan*/  node_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  db_bar; } ;
struct efa_dev {TYPE_2__ ibdev; int /*<<< orphan*/  edev; TYPE_5__ dev_attr; struct pci_dev* pdev; } ;
struct efa_com_get_network_attr_result {int dummy; } ;
struct efa_com_get_hw_hints_result {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_AENQ_ENABLED_GROUPS ; 
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_AH ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ; 
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_AH ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_REG_MR ; 
 unsigned long long IB_USER_VERBS_EX_CMD_QUERY_DEVICE ; 
 int /*<<< orphan*/  RDMA_NODE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct efa_com_get_hw_hints_result*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct efa_com_get_network_attr_result*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efa_dev_ops ; 
 int /*<<< orphan*/  FUNC5 (struct efa_dev*) ; 
 int FUNC6 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct efa_dev*,struct efa_com_get_hw_hints_result*) ; 
 int /*<<< orphan*/  FUNC9 (struct efa_dev*,struct efa_com_get_network_attr_result*) ; 
 int FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC13(struct efa_dev *dev)
{
	struct efa_com_get_network_attr_result network_attr;
	struct efa_com_get_hw_hints_result hw_hints;
	struct pci_dev *pdev = dev->pdev;
	int err;

	FUNC7(dev);

	err = FUNC1(&dev->edev, &dev->dev_attr);
	if (err)
		return err;

	FUNC0(&dev->pdev->dev, "Doorbells bar (%d)\n", dev->dev_attr.db_bar);
	err = FUNC6(dev);
	if (err)
		return err;

	err = FUNC3(&dev->edev, &network_attr);
	if (err)
		goto err_release_doorbell_bar;

	FUNC9(dev, &network_attr);

	err = FUNC2(&dev->edev, &hw_hints);
	if (err)
		goto err_release_doorbell_bar;

	FUNC8(dev, &hw_hints);

	/* Try to enable all the available aenq groups */
	err = FUNC4(&dev->edev, EFA_AENQ_ENABLED_GROUPS);
	if (err)
		goto err_release_doorbell_bar;

	dev->ibdev.node_type = RDMA_NODE_UNSPECIFIED;
	dev->ibdev.phys_port_cnt = 1;
	dev->ibdev.num_comp_vectors = 1;
	dev->ibdev.dev.parent = &pdev->dev;

	dev->ibdev.uverbs_cmd_mask =
		(1ull << IB_USER_VERBS_CMD_GET_CONTEXT) |
		(1ull << IB_USER_VERBS_CMD_QUERY_DEVICE) |
		(1ull << IB_USER_VERBS_CMD_QUERY_PORT) |
		(1ull << IB_USER_VERBS_CMD_ALLOC_PD) |
		(1ull << IB_USER_VERBS_CMD_DEALLOC_PD) |
		(1ull << IB_USER_VERBS_CMD_REG_MR) |
		(1ull << IB_USER_VERBS_CMD_DEREG_MR) |
		(1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
		(1ull << IB_USER_VERBS_CMD_CREATE_CQ) |
		(1ull << IB_USER_VERBS_CMD_DESTROY_CQ) |
		(1ull << IB_USER_VERBS_CMD_CREATE_QP) |
		(1ull << IB_USER_VERBS_CMD_MODIFY_QP) |
		(1ull << IB_USER_VERBS_CMD_QUERY_QP) |
		(1ull << IB_USER_VERBS_CMD_DESTROY_QP) |
		(1ull << IB_USER_VERBS_CMD_CREATE_AH) |
		(1ull << IB_USER_VERBS_CMD_DESTROY_AH);

	dev->ibdev.uverbs_ex_cmd_mask =
		(1ull << IB_USER_VERBS_EX_CMD_QUERY_DEVICE);

	FUNC11(&dev->ibdev, &efa_dev_ops);

	err = FUNC10(&dev->ibdev, "efa_%d");
	if (err)
		goto err_release_doorbell_bar;

	FUNC12(&dev->ibdev, "IB device registered\n");

	return 0;

err_release_doorbell_bar:
	FUNC5(dev);
	return err;
}