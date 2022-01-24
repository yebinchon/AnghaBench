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
struct net_device {int dummy; } ;
struct bnxt_en_dev {TYPE_3__* pdev; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
				struct bnxt_en_dev *en_dev)
{
	FUNC0(netdev);
	FUNC1(en_dev->pdev->driver->driver.owner);
}