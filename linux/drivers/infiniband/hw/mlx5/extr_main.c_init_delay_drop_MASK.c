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
struct TYPE_4__ {int activate; int timeout; int /*<<< orphan*/  events_cnt; int /*<<< orphan*/  rqs_cnt; int /*<<< orphan*/  delay_drop_work; struct mlx5_ib_dev* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int raw_packet_caps; } ;
struct TYPE_6__ {TYPE_2__ attrs; } ;
struct mlx5_ib_dev {TYPE_1__ delay_drop; TYPE_3__ ib_dev; } ;

/* Variables and functions */
 int IB_RAW_PACKET_CAP_DELAY_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_MAX_DELAY_DROP_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  delay_drop_handler ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5_ib_dev *dev)
{
	if (!(dev->ib_dev.attrs.raw_packet_caps & IB_RAW_PACKET_CAP_DELAY_DROP))
		return;

	FUNC4(&dev->delay_drop.lock);
	dev->delay_drop.dev = dev;
	dev->delay_drop.activate = false;
	dev->delay_drop.timeout = MLX5_MAX_DELAY_DROP_TIMEOUT_MS * 1000;
	FUNC0(&dev->delay_drop.delay_drop_work, delay_drop_handler);
	FUNC1(&dev->delay_drop.rqs_cnt, 0);
	FUNC1(&dev->delay_drop.events_cnt, 0);

	if (FUNC2(dev))
		FUNC3(dev, "Failed to init delay drop debugfs\n");
}