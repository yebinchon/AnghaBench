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
struct radeon_ring {int dummy; } ;
struct radeon_device {int num_gb_pipes; } ;

/* Variables and functions */
 int BACK_PTYPE_TRIANGE ; 
 int COLOR_ROUND_NEAREST ; 
 int FRONT_PTYPE_TRIANGE ; 
 int GA_DEADLOCK_CNTL ; 
 int GA_ENHANCE ; 
 int GA_FASTSYNC_CNTL ; 
 int GA_POLY_MODE ; 
 int GA_ROUND_MODE ; 
 int GB_AA_CONFIG ; 
 int GB_ENABLE ; 
 int GB_MSPOS0 ; 
 int GB_MSPOS1 ; 
 int GB_SELECT ; 
 int GEOMETRY_ROUND_NEAREST ; 
 int ISYNC_ANY2D_IDLE3D ; 
 int ISYNC_ANY3D_IDLE2D ; 
 int ISYNC_CNTL ; 
 int ISYNC_CPSCRATCH_IDLEGUI ; 
 int ISYNC_WAIT_IDLEGUI ; 
 int MSBD0_X_SHIFT ; 
 int MSBD0_Y_SHIFT ; 
 int MSBD1_SHIFT ; 
 int MS_X0_SHIFT ; 
 int MS_X1_SHIFT ; 
 int MS_X2_SHIFT ; 
 int MS_X3_SHIFT ; 
 int MS_X4_SHIFT ; 
 int MS_X5_SHIFT ; 
 int MS_Y0_SHIFT ; 
 int MS_Y1_SHIFT ; 
 int MS_Y2_SHIFT ; 
 int MS_Y3_SHIFT ; 
 int MS_Y4_SHIFT ; 
 int MS_Y5_SHIFT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int R300_DST_PIPE_CONFIG ; 
 int R300_PIPE_AUTO_CONFIG ; 
 int R500_SU_REG_DEST ; 
 int RB3D_DC_FLUSH ; 
 int RB3D_DC_FREE ; 
 int RB3D_DSTCACHE_CTLSTAT ; 
 int VAP_INDEX_OFFSET ; 
 int WAIT_2D_IDLECLEAN ; 
 int WAIT_3D_IDLECLEAN ; 
 int WAIT_UNTIL ; 
 int ZB_ZCACHE_CTLSTAT ; 
 int ZC_FLUSH ; 
 int ZC_FREE ; 
 int FUNC1 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,int) ; 

void FUNC4(struct radeon_device *rdev, struct radeon_ring *ring)
{
	int r;

	r = FUNC1(rdev, ring, 64);
	if (r) {
		return;
	}
	FUNC3(ring, FUNC0(ISYNC_CNTL, 0));
	FUNC3(ring,
			  ISYNC_ANY2D_IDLE3D |
			  ISYNC_ANY3D_IDLE2D |
			  ISYNC_WAIT_IDLEGUI |
			  ISYNC_CPSCRATCH_IDLEGUI);
	FUNC3(ring, FUNC0(WAIT_UNTIL, 0));
	FUNC3(ring, WAIT_2D_IDLECLEAN | WAIT_3D_IDLECLEAN);
	FUNC3(ring, FUNC0(R300_DST_PIPE_CONFIG, 0));
	FUNC3(ring, R300_PIPE_AUTO_CONFIG);
	FUNC3(ring, FUNC0(GB_SELECT, 0));
	FUNC3(ring, 0);
	FUNC3(ring, FUNC0(GB_ENABLE, 0));
	FUNC3(ring, 0);
	FUNC3(ring, FUNC0(R500_SU_REG_DEST, 0));
	FUNC3(ring, (1 << rdev->num_gb_pipes) - 1);
	FUNC3(ring, FUNC0(VAP_INDEX_OFFSET, 0));
	FUNC3(ring, 0);
	FUNC3(ring, FUNC0(RB3D_DSTCACHE_CTLSTAT, 0));
	FUNC3(ring, RB3D_DC_FLUSH | RB3D_DC_FREE);
	FUNC3(ring, FUNC0(ZB_ZCACHE_CTLSTAT, 0));
	FUNC3(ring, ZC_FLUSH | ZC_FREE);
	FUNC3(ring, FUNC0(WAIT_UNTIL, 0));
	FUNC3(ring, WAIT_2D_IDLECLEAN | WAIT_3D_IDLECLEAN);
	FUNC3(ring, FUNC0(GB_AA_CONFIG, 0));
	FUNC3(ring, 0);
	FUNC3(ring, FUNC0(RB3D_DSTCACHE_CTLSTAT, 0));
	FUNC3(ring, RB3D_DC_FLUSH | RB3D_DC_FREE);
	FUNC3(ring, FUNC0(ZB_ZCACHE_CTLSTAT, 0));
	FUNC3(ring, ZC_FLUSH | ZC_FREE);
	FUNC3(ring, FUNC0(GB_MSPOS0, 0));
	FUNC3(ring,
			  ((6 << MS_X0_SHIFT) |
			   (6 << MS_Y0_SHIFT) |
			   (6 << MS_X1_SHIFT) |
			   (6 << MS_Y1_SHIFT) |
			   (6 << MS_X2_SHIFT) |
			   (6 << MS_Y2_SHIFT) |
			   (6 << MSBD0_Y_SHIFT) |
			   (6 << MSBD0_X_SHIFT)));
	FUNC3(ring, FUNC0(GB_MSPOS1, 0));
	FUNC3(ring,
			  ((6 << MS_X3_SHIFT) |
			   (6 << MS_Y3_SHIFT) |
			   (6 << MS_X4_SHIFT) |
			   (6 << MS_Y4_SHIFT) |
			   (6 << MS_X5_SHIFT) |
			   (6 << MS_Y5_SHIFT) |
			   (6 << MSBD1_SHIFT)));
	FUNC3(ring, FUNC0(GA_ENHANCE, 0));
	FUNC3(ring, GA_DEADLOCK_CNTL | GA_FASTSYNC_CNTL);
	FUNC3(ring, FUNC0(GA_POLY_MODE, 0));
	FUNC3(ring, FRONT_PTYPE_TRIANGE | BACK_PTYPE_TRIANGE);
	FUNC3(ring, FUNC0(GA_ROUND_MODE, 0));
	FUNC3(ring, GEOMETRY_ROUND_NEAREST | COLOR_ROUND_NEAREST);
	FUNC3(ring, FUNC0(0x20C8, 0));
	FUNC3(ring, 0);
	FUNC2(rdev, ring, false);
}