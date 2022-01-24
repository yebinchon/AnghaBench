#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {int /*<<< orphan*/ * raw; TYPE_1__ global; } ;
typedef  int u8 ;
struct qedr_dev {int* gsi_ll2_mac_address; TYPE_3__* ndev; int /*<<< orphan*/  cdev; TYPE_2__* ops; union ib_gid* sgid_tbl; } ;
typedef  int /*<<< orphan*/  guid ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int (* ll2_set_mac_filter ) (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*) ; 
 int /*<<< orphan*/  IB_EVENT_GID_CHANGE ; 
 int /*<<< orphan*/  QEDR_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qedr_dev *dev)
{
	union ib_gid *sgid = &dev->sgid_tbl[0];
	u8 guid[8], mac_addr[6];
	int rc;

	/* Update SGID */
	FUNC2(&mac_addr[0], dev->ndev->dev_addr);
	guid[0] = mac_addr[0] ^ 2;
	guid[1] = mac_addr[1];
	guid[2] = mac_addr[2];
	guid[3] = 0xff;
	guid[4] = 0xfe;
	guid[5] = mac_addr[3];
	guid[6] = mac_addr[4];
	guid[7] = mac_addr[5];
	sgid->global.subnet_prefix = FUNC1(0xfe80000000000000LL);
	FUNC3(&sgid->raw[8], guid, sizeof(guid));

	/* Update LL2 */
	rc = dev->ops->ll2_set_mac_filter(dev->cdev,
					  dev->gsi_ll2_mac_address,
					  dev->ndev->dev_addr);

	FUNC2(dev->gsi_ll2_mac_address, dev->ndev->dev_addr);

	FUNC4(dev, QEDR_PORT, IB_EVENT_GID_CHANGE);

	if (rc)
		FUNC0(dev, "Error updating mac filter\n");
}