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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {int /*<<< orphan*/  family; } ;
struct radeon_cs_parser {struct radeon_device* rdev; struct radeon_cs_chunk* chunk_ib; } ;
struct radeon_cs_packet {unsigned int idx; int count; int /*<<< orphan*/  type; int /*<<< orphan*/  opcode; int /*<<< orphan*/  reg; scalar_t__ one_reg_wr; } ;
struct radeon_cs_chunk {unsigned int length_dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_R600 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  RADEON_PACKET_TYPE0 130 
#define  RADEON_PACKET_TYPE2 129 
#define  RADEON_PACKET_TYPE3 128 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_cs_parser*,int) ; 

int FUNC9(struct radeon_cs_parser *p,
			   struct radeon_cs_packet *pkt,
			   unsigned idx)
{
	struct radeon_cs_chunk *ib_chunk = p->chunk_ib;
	struct radeon_device *rdev = p->rdev;
	uint32_t header;
	int ret = 0, i;

	if (idx >= ib_chunk->length_dw) {
		FUNC0("Can not parse packet at %d after CS end %d !\n",
			  idx, ib_chunk->length_dw);
		return -EINVAL;
	}
	header = FUNC8(p, idx);
	pkt->idx = idx;
	pkt->type = FUNC6(header);
	pkt->count = FUNC5(header);
	pkt->one_reg_wr = 0;
	switch (pkt->type) {
	case RADEON_PACKET_TYPE0:
		if (rdev->family < CHIP_R600) {
			pkt->reg = FUNC1(header);
			pkt->one_reg_wr =
				FUNC3(header);
		} else
			pkt->reg = FUNC2(header);
		break;
	case RADEON_PACKET_TYPE3:
		pkt->opcode = FUNC4(header);
		break;
	case RADEON_PACKET_TYPE2:
		pkt->count = -1;
		break;
	default:
		FUNC0("Unknown packet type %d at %d !\n", pkt->type, idx);
		ret = -EINVAL;
		goto dump_ib;
	}
	if ((pkt->count + 1 + pkt->idx) >= ib_chunk->length_dw) {
		FUNC0("Packet (%d:%d:%d) end after CS buffer (%d) !\n",
			  pkt->idx, pkt->type, pkt->count, ib_chunk->length_dw);
		ret = -EINVAL;
		goto dump_ib;
	}
	return 0;

dump_ib:
	for (i = 0; i < ib_chunk->length_dw; i++) {
		if (i == idx)
			FUNC7("\t0x%08x <---\n", FUNC8(p, i));
		else
			FUNC7("\t0x%08x\n", FUNC8(p, i));
	}
	return ret;
}