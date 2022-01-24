#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int* ptr; } ;
struct radeon_cs_parser {int cs_flags; TYPE_1__ ib; } ;
struct radeon_cs_packet {int dummy; } ;
struct radeon_bo_list {int tiling_flags; scalar_t__ gpu_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int RADEON_CS_KEEP_TILING_FLAGS ; 
 int RADEON_DST_TILE_MACRO ; 
 int RADEON_DST_TILE_MICRO ; 
 unsigned int RADEON_SRC_PITCH_OFFSET ; 
 int RADEON_TILING_MACRO ; 
 int RADEON_TILING_MICRO ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_cs_parser*,struct radeon_cs_packet*) ; 
 int FUNC2 (struct radeon_cs_parser*,struct radeon_bo_list**,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_cs_parser*,unsigned int) ; 

int FUNC4(struct radeon_cs_parser *p,
			    struct radeon_cs_packet *pkt,
			    unsigned idx,
			    unsigned reg)
{
	int r;
	u32 tile_flags = 0;
	u32 tmp;
	struct radeon_bo_list *reloc;
	u32 value;

	r = FUNC2(p, &reloc, 0);
	if (r) {
		FUNC0("No reloc for ib[%d]=0x%04X\n",
			  idx, reg);
		FUNC1(p, pkt);
		return r;
	}

	value = FUNC3(p, idx);
	tmp = value & 0x003fffff;
	tmp += (((u32)reloc->gpu_offset) >> 10);

	if (!(p->cs_flags & RADEON_CS_KEEP_TILING_FLAGS)) {
		if (reloc->tiling_flags & RADEON_TILING_MACRO)
			tile_flags |= RADEON_DST_TILE_MACRO;
		if (reloc->tiling_flags & RADEON_TILING_MICRO) {
			if (reg == RADEON_SRC_PITCH_OFFSET) {
				FUNC0("Cannot src blit from microtiled surface\n");
				FUNC1(p, pkt);
				return -EINVAL;
			}
			tile_flags |= RADEON_DST_TILE_MICRO;
		}

		tmp |= tile_flags;
		p->ib.ptr[idx] = (value & 0x3fc00000) | tmp;
	} else
		p->ib.ptr[idx] = (value & 0xffc00000) | tmp;
	return 0;
}