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
struct zx_vou_hw {scalar_t__ timing; } ;
struct zx_crtc {TYPE_1__* bits; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_frame_mask; } ;

/* Variables and functions */
 scalar_t__ TIMING_INT_CTRL ; 
 struct zx_vou_hw* FUNC0 (struct drm_crtc*) ; 
 struct zx_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct zx_crtc *zcrtc = FUNC1(crtc);
	struct zx_vou_hw *vou = FUNC0(crtc);

	FUNC2(vou->timing + TIMING_INT_CTRL,
		       zcrtc->bits->int_frame_mask, 0);
}