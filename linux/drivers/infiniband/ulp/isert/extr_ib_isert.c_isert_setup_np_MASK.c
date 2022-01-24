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
struct sockaddr_storage {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
struct isert_np {struct rdma_cm_id* cm_id; struct iscsi_np* np; int /*<<< orphan*/  pending; int /*<<< orphan*/  accepted; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sem; } ;
struct iscsi_np {struct isert_np* np_context; int /*<<< orphan*/  np_sockaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct rdma_cm_id*) ; 
 struct rdma_cm_id* FUNC3 (struct isert_np*) ; 
 int /*<<< orphan*/  FUNC4 (struct isert_np*) ; 
 struct isert_np* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct iscsi_np *np,
	       struct sockaddr_storage *ksockaddr)
{
	struct isert_np *isert_np;
	struct rdma_cm_id *isert_lid;
	int ret;

	isert_np = FUNC5(sizeof(struct isert_np), GFP_KERNEL);
	if (!isert_np)
		return -ENOMEM;

	FUNC8(&isert_np->sem, 0);
	FUNC7(&isert_np->mutex);
	FUNC0(&isert_np->accepted);
	FUNC0(&isert_np->pending);
	isert_np->np = np;

	/*
	 * Setup the np->np_sockaddr from the passed sockaddr setup
	 * in iscsi_target_configfs.c code..
	 */
	FUNC6(&np->np_sockaddr, ksockaddr,
	       sizeof(struct sockaddr_storage));

	isert_lid = FUNC3(isert_np);
	if (FUNC1(isert_lid)) {
		ret = FUNC2(isert_lid);
		goto out;
	}

	isert_np->cm_id = isert_lid;
	np->np_context = isert_np;

	return 0;

out:
	FUNC4(isert_np);

	return ret;
}