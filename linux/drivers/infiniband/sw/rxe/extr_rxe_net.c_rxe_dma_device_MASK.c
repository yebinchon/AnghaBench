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
struct rxe_dev {struct net_device* ndev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 

struct device *FUNC2(struct rxe_dev *rxe)
{
	struct net_device *ndev;

	ndev = rxe->ndev;

	if (FUNC0(ndev))
		ndev = FUNC1(ndev);

	return ndev->dev.parent;
}