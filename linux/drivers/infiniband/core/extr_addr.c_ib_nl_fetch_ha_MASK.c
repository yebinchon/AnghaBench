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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rdma_dev_addr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  RDMA_NL_GROUP_LS ; 
 int FUNC0 (struct rdma_dev_addr*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rdma_dev_addr *dev_addr,
			  const void *daddr, u32 seq, u16 family)
{
	if (!FUNC1(RDMA_NL_GROUP_LS))
		return -EADDRNOTAVAIL;

	return FUNC0(dev_addr, daddr, seq, family);
}