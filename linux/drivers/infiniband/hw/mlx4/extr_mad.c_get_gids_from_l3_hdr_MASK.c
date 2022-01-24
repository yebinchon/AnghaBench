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
typedef  union rdma_network_hdr {int dummy; } rdma_network_hdr ;
typedef  union ib_gid {int dummy; } ib_gid ;
struct ib_grh {int dummy; } ;
typedef  enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;

/* Variables and functions */
 int EINVAL ; 
 int RDMA_NETWORK_IPV4 ; 
 int RDMA_NETWORK_IPV6 ; 
 int FUNC0 (union rdma_network_hdr*,int,union ib_gid*,union ib_gid*) ; 
 int FUNC1 (union rdma_network_hdr const*) ; 

__attribute__((used)) static int FUNC2(struct ib_grh *grh, union ib_gid *sgid,
				union ib_gid *dgid)
{
	int version = FUNC1((const union rdma_network_hdr *)grh);
	enum rdma_network_type net_type;

	if (version == 4)
		net_type = RDMA_NETWORK_IPV4;
	else if (version == 6)
		net_type = RDMA_NETWORK_IPV6;
	else
		return -EINVAL;

	return FUNC0((union rdma_network_hdr *)grh, net_type,
					 sgid, dgid);
}