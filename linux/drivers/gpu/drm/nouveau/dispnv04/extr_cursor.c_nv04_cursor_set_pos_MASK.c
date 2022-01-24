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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nouveau_crtc {int cursor_saved_x; int cursor_saved_y; int /*<<< orphan*/  index; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_PRAMDAC_CU_START_POS ; 
 int /*<<< orphan*/  NV_PRAMDAC_CU_START_POS_X ; 
 int /*<<< orphan*/  NV_PRAMDAC_CU_START_POS_Y ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nouveau_crtc *nv_crtc, int x, int y)
{
	nv_crtc->cursor_saved_x = x; nv_crtc->cursor_saved_y = y;
	FUNC0(nv_crtc->base.dev, nv_crtc->index,
		      NV_PRAMDAC_CU_START_POS,
		      FUNC1(y, 0, NV_PRAMDAC_CU_START_POS_Y) |
		      FUNC1(x, 0, NV_PRAMDAC_CU_START_POS_X));
}