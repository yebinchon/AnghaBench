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
struct mlx5_ib_multiport_info {struct mlx5_ib_dev* ibdev; } ;
struct mlx5_ib_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  mlx5_ib_multiport_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct mlx5_ib_dev *FUNC2(struct mlx5_ib_multiport_info *mpi)
{
	struct mlx5_ib_dev *dev;

	FUNC0(&mlx5_ib_multiport_mutex);
	dev = mpi->ibdev;
	FUNC1(&mlx5_ib_multiport_mutex);
	return dev;
}