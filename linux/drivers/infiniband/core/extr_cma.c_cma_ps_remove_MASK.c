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
struct net {int dummy; } ;
typedef  enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;

/* Variables and functions */
 struct xarray* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xarray*,int) ; 

__attribute__((used)) static void FUNC2(struct net *net, enum rdma_ucm_port_space ps,
			  int snum)
{
	struct xarray *xa = FUNC0(net, ps);

	FUNC1(xa, snum);
}