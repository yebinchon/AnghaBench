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
struct zx_vou_hw {scalar_t__ vouctl; } ;
struct vou_inf {int clocks_en_bits; } ;
struct drm_crtc {int dummy; } ;
typedef  enum vou_inf_id { ____Placeholder_vou_inf_id } vou_inf_id ;

/* Variables and functions */
 scalar_t__ VOU_CLK_EN ; 
 scalar_t__ VOU_INF_EN ; 
 struct zx_vou_hw* FUNC0 (struct drm_crtc*) ; 
 struct vou_inf* vou_infs ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 

void FUNC2(enum vou_inf_id id, struct drm_crtc *crtc)
{
	struct zx_vou_hw *vou = FUNC0(crtc);
	struct vou_inf *inf = &vou_infs[id];

	/* Disable the device */
	FUNC1(vou->vouctl + VOU_INF_EN, 1 << id, 0);

	/* Disable interface clocks */
	FUNC1(vou->vouctl + VOU_CLK_EN, inf->clocks_en_bits, 0);
}