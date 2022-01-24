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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifla_vf_stats {void* multicast; void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  packets; } ;
struct TYPE_5__ {int /*<<< orphan*/  octets; int /*<<< orphan*/  packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  octets; int /*<<< orphan*/  packets; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,int,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  query_vport_counter_out ; 
 TYPE_3__ received_ib_multicast ; 
 TYPE_2__ received_ib_unicast ; 
 struct mlx5_ib_dev* FUNC5 (struct ib_device*) ; 
 TYPE_1__ transmitted_ib_unicast ; 

int FUNC6(struct ib_device *device, int vf,
			 u8 port, struct ifla_vf_stats *stats)
{
	int out_sz = FUNC1(query_vport_counter_out);
	struct mlx5_core_dev *mdev;
	struct mlx5_ib_dev *dev;
	void *out;
	int err;

	dev = FUNC5(device);
	mdev = dev->mdev;

	out = FUNC3(out_sz, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	err = FUNC4(mdev, true, vf, port, out, out_sz);
	if (err)
		goto ex;

	stats->rx_packets = FUNC0(query_vport_counter_out, out, received_ib_unicast.packets);
	stats->tx_packets = FUNC0(query_vport_counter_out, out, transmitted_ib_unicast.packets);
	stats->rx_bytes = FUNC0(query_vport_counter_out, out, received_ib_unicast.octets);
	stats->tx_bytes = FUNC0(query_vport_counter_out, out, transmitted_ib_unicast.octets);
	stats->multicast = FUNC0(query_vport_counter_out, out, received_ib_multicast.packets);

ex:
	FUNC2(out);
	return err;
}