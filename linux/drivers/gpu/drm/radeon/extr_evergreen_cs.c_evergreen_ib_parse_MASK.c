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
typedef  size_t u32 ;
struct radeon_ib {size_t length_dw; int /*<<< orphan*/ * ptr; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;
struct radeon_cs_packet {size_t idx; int type; int /*<<< orphan*/  count; int /*<<< orphan*/  opcode; scalar_t__ one_reg_wr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  RADEON_PACKET_TYPE0 130 
#define  RADEON_PACKET_TYPE2 129 
#define  RADEON_PACKET_TYPE3 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ *,struct radeon_cs_packet*) ; 

int FUNC5(struct radeon_device *rdev, struct radeon_ib *ib)
{
	int ret = 0;
	u32 idx = 0;
	struct radeon_cs_packet pkt;

	do {
		pkt.idx = idx;
		pkt.type = FUNC2(ib->ptr[idx]);
		pkt.count = FUNC1(ib->ptr[idx]);
		pkt.one_reg_wr = 0;
		switch (pkt.type) {
		case RADEON_PACKET_TYPE0:
			FUNC3(rdev->dev, "Packet0 not allowed!\n");
			ret = -EINVAL;
			break;
		case RADEON_PACKET_TYPE2:
			idx += 1;
			break;
		case RADEON_PACKET_TYPE3:
			pkt.opcode = FUNC0(ib->ptr[idx]);
			ret = FUNC4(rdev, ib->ptr, &pkt);
			idx += pkt.count + 2;
			break;
		default:
			FUNC3(rdev->dev, "Unknown packet type %d !\n", pkt.type);
			ret = -EINVAL;
			break;
		}
		if (ret)
			break;
	} while (idx < ib->length_dw);

	return ret;
}