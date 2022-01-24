#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int length_dw; int /*<<< orphan*/ * ptr; } ;
struct radeon_cs_parser {struct evergreen_cs_track* track; TYPE_6__ ib; int /*<<< orphan*/  idx; TYPE_5__* chunk_ib; TYPE_4__* rdev; } ;
struct radeon_cs_packet {int type; scalar_t__ count; } ;
struct evergreen_cs_track {int npipes; int nbanks; int group_size; int row_size; void* reg_safe_bm; } ;
struct TYPE_11__ {int /*<<< orphan*/  length_dw; } ;
struct TYPE_8__ {int tile_config; } ;
struct TYPE_7__ {int tile_config; } ;
struct TYPE_9__ {TYPE_2__ evergreen; TYPE_1__ cayman; } ;
struct TYPE_10__ {scalar_t__ family; TYPE_3__ config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  RADEON_PACKET_TYPE0 130 
#define  RADEON_PACKET_TYPE2 129 
#define  RADEON_PACKET_TYPE3 128 
 scalar_t__ REG_SAFE_BM_SIZE ; 
 void* cayman_reg_safe_bm ; 
 int FUNC3 (struct radeon_cs_parser*,struct radeon_cs_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct evergreen_cs_track*) ; 
 int FUNC5 (struct radeon_cs_parser*,struct radeon_cs_packet*) ; 
 void* evergreen_reg_safe_bm ; 
 int /*<<< orphan*/  FUNC6 (struct evergreen_cs_track*) ; 
 struct evergreen_cs_track* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct radeon_cs_parser*,struct radeon_cs_packet*,int /*<<< orphan*/ ) ; 

int FUNC11(struct radeon_cs_parser *p)
{
	struct radeon_cs_packet pkt;
	struct evergreen_cs_track *track;
	u32 tmp;
	int r;

	if (p->track == NULL) {
		/* initialize tracker, we are in kms */
		track = FUNC7(sizeof(*track), GFP_KERNEL);
		if (track == NULL)
			return -ENOMEM;
		FUNC4(track);
		if (p->rdev->family >= CHIP_CAYMAN) {
			tmp = p->rdev->config.cayman.tile_config;
			track->reg_safe_bm = cayman_reg_safe_bm;
		} else {
			tmp = p->rdev->config.evergreen.tile_config;
			track->reg_safe_bm = evergreen_reg_safe_bm;
		}
		FUNC1(FUNC0(cayman_reg_safe_bm) != REG_SAFE_BM_SIZE);
		FUNC1(FUNC0(evergreen_reg_safe_bm) != REG_SAFE_BM_SIZE);
		switch (tmp & 0xf) {
		case 0:
			track->npipes = 1;
			break;
		case 1:
		default:
			track->npipes = 2;
			break;
		case 2:
			track->npipes = 4;
			break;
		case 3:
			track->npipes = 8;
			break;
		}

		switch ((tmp & 0xf0) >> 4) {
		case 0:
			track->nbanks = 4;
			break;
		case 1:
		default:
			track->nbanks = 8;
			break;
		case 2:
			track->nbanks = 16;
			break;
		}

		switch ((tmp & 0xf00) >> 8) {
		case 0:
			track->group_size = 256;
			break;
		case 1:
		default:
			track->group_size = 512;
			break;
		}

		switch ((tmp & 0xf000) >> 12) {
		case 0:
			track->row_size = 1;
			break;
		case 1:
		default:
			track->row_size = 2;
			break;
		case 2:
			track->row_size = 4;
			break;
		}

		p->track = track;
	}
	do {
		r = FUNC10(p, &pkt, p->idx);
		if (r) {
			FUNC6(p->track);
			p->track = NULL;
			return r;
		}
		p->idx += pkt.count + 2;
		switch (pkt.type) {
		case RADEON_PACKET_TYPE0:
			r = FUNC3(p, &pkt);
			break;
		case RADEON_PACKET_TYPE2:
			break;
		case RADEON_PACKET_TYPE3:
			r = FUNC5(p, &pkt);
			break;
		default:
			FUNC2("Unknown packet type %d !\n", pkt.type);
			FUNC6(p->track);
			p->track = NULL;
			return -EINVAL;
		}
		if (r) {
			FUNC6(p->track);
			p->track = NULL;
			return r;
		}
	} while (p->idx < p->chunk_ib->length_dw);
#if 0
	for (r = 0; r < p->ib.length_dw; r++) {
		pr_info("%05d  0x%08X\n", r, p->ib.ptr[r]);
		mdelay(1);
	}
#endif
	FUNC6(p->track);
	p->track = NULL;
	return 0;
}