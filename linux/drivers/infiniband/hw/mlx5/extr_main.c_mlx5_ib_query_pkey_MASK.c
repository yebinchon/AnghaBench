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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 130 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 129 
#define  MLX5_VPORT_ACCESS_METHOD_NIC 128 
 int FUNC0 (struct ib_device*) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev, u8 port, u16 index,
			      u16 *pkey)
{
	switch (FUNC0(ibdev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		return FUNC2(ibdev, port, index, pkey);

	case MLX5_VPORT_ACCESS_METHOD_HCA:
	case MLX5_VPORT_ACCESS_METHOD_NIC:
		return FUNC1(ibdev, port, index, pkey);
	default:
		return -EINVAL;
	}
}