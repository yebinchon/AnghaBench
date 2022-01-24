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
struct xarray {int dummy; } ;
struct rdma_bind_list {int dummy; } ;
struct net {int dummy; } ;
typedef  enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xarray* FUNC0 (struct net*,int) ; 
 int FUNC1 (struct xarray*,int,struct rdma_bind_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net *net, enum rdma_ucm_port_space ps,
			struct rdma_bind_list *bind_list, int snum)
{
	struct xarray *xa = FUNC0(net, ps);

	return FUNC1(xa, snum, bind_list, GFP_KERNEL);
}