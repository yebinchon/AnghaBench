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
struct amdgpu_ring {int dummy; } ;
struct amdgpu_ib {int length_dw; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 

__attribute__((used)) static void FUNC1(struct amdgpu_ring *ring, struct amdgpu_ib *ib)
{
	while (ib->length_dw & 0x7)
		ib->ptr[ib->length_dw++] = FUNC0(DMA_PACKET_NOP, 0, 0, 0, 0);
}