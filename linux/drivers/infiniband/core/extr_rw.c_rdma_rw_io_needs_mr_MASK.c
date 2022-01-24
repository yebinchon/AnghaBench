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
struct ib_device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rdma_rw_force_mr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct ib_device *dev, u8 port_num,
		enum dma_data_direction dir, int dma_nents)
{
	if (FUNC0(dev, port_num) && dir == DMA_FROM_DEVICE)
		return true;
	if (FUNC1(rdma_rw_force_mr))
		return true;
	return false;
}