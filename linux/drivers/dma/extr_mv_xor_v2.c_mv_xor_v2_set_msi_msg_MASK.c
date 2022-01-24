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
struct mv_xor_v2_device {scalar_t__ dma_base; } ;
struct msi_msg {int address_lo; int address_hi; int data; } ;
struct msi_desc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MV_XOR_V2_DMA_IMSG_BAHR_OFF ; 
 scalar_t__ MV_XOR_V2_DMA_IMSG_BALR_OFF ; 
 scalar_t__ MV_XOR_V2_DMA_IMSG_CDAT_OFF ; 
 struct mv_xor_v2_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct msi_desc *desc, struct msi_msg *msg)
{
	struct mv_xor_v2_device *xor_dev = FUNC0(desc->dev);

	FUNC1(msg->address_lo,
	       xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_BALR_OFF);
	FUNC1(msg->address_hi & 0xFFFF,
	       xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_BAHR_OFF);
	FUNC1(msg->data,
	       xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_CDAT_OFF);
}