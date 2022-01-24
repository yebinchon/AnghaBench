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
typedef  int uint32_t ;
typedef  int u64 ;
typedef  int u32 ;
struct amdgpu_iv_entry {int client_id; int src_id; int ring_id; int vmid; int vmid_src; int timestamp; int timestamp_src; int pasid; int pasid_src; int* src_data; } ;
struct amdgpu_ih_ring {int rptr; int /*<<< orphan*/ * ring; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev,
				struct amdgpu_ih_ring *ih,
				struct amdgpu_iv_entry *entry)
{
	/* wptr/rptr are in bytes! */
	u32 ring_index = ih->rptr >> 2;
	uint32_t dw[8];

	dw[0] = FUNC0(ih->ring[ring_index + 0]);
	dw[1] = FUNC0(ih->ring[ring_index + 1]);
	dw[2] = FUNC0(ih->ring[ring_index + 2]);
	dw[3] = FUNC0(ih->ring[ring_index + 3]);
	dw[4] = FUNC0(ih->ring[ring_index + 4]);
	dw[5] = FUNC0(ih->ring[ring_index + 5]);
	dw[6] = FUNC0(ih->ring[ring_index + 6]);
	dw[7] = FUNC0(ih->ring[ring_index + 7]);

	entry->client_id = dw[0] & 0xff;
	entry->src_id = (dw[0] >> 8) & 0xff;
	entry->ring_id = (dw[0] >> 16) & 0xff;
	entry->vmid = (dw[0] >> 24) & 0xf;
	entry->vmid_src = (dw[0] >> 31);
	entry->timestamp = dw[1] | ((u64)(dw[2] & 0xffff) << 32);
	entry->timestamp_src = dw[2] >> 31;
	entry->pasid = dw[3] & 0xffff;
	entry->pasid_src = dw[3] >> 31;
	entry->src_data[0] = dw[4];
	entry->src_data[1] = dw[5];
	entry->src_data[2] = dw[6];
	entry->src_data[3] = dw[7];

	/* wptr/rptr are in bytes! */
	ih->rptr += 32;
}