#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct hsi_client* channels; } ;
struct TYPE_3__ {struct hsi_client* channels; } ;
struct hsi_client {TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hsi_client*) ; 
 struct hsi_client* FUNC1 (struct device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct hsi_client *cl = FUNC1(dev);

	FUNC0(cl->tx_cfg.channels);
	FUNC0(cl->rx_cfg.channels);
	FUNC0(cl);
}