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
typedef  int /*<<< orphan*/  u32 ;
struct rcar_du_crtc {int /*<<< orphan*/  crtc; scalar_t__ vblank_enable; } ;

/* Variables and functions */
 unsigned int VSP1_DU_STATUS_COMPLETE ; 
 unsigned int VSP1_DU_STATUS_WRITEBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*) ; 

__attribute__((used)) static void FUNC4(void *private, unsigned int status, u32 crc)
{
	struct rcar_du_crtc *crtc = private;

	if (crtc->vblank_enable)
		FUNC1(&crtc->crtc);

	if (status & VSP1_DU_STATUS_COMPLETE)
		FUNC2(crtc);
	if (status & VSP1_DU_STATUS_WRITEBACK)
		FUNC3(crtc);

	FUNC0(&crtc->crtc, false, 0, &crc);
}