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
struct ucma_context {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
#define  RDMA_OPTION_IB 129 
#define  RDMA_OPTION_ID 128 
 int FUNC0 (struct ucma_context*,int,void*,size_t) ; 
 int FUNC1 (struct ucma_context*,int,void*,size_t) ; 

__attribute__((used)) static int FUNC2(struct ucma_context *ctx, int level,
				 int optname, void *optval, size_t optlen)
{
	int ret;

	switch (level) {
	case RDMA_OPTION_ID:
		ret = FUNC1(ctx, optname, optval, optlen);
		break;
	case RDMA_OPTION_IB:
		ret = FUNC0(ctx, optname, optval, optlen);
		break;
	default:
		ret = -ENOSYS;
	}

	return ret;
}