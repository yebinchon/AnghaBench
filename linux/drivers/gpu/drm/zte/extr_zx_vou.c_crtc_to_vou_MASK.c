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
struct zx_vou_hw {int dummy; } ;
struct zx_crtc {struct zx_vou_hw* vou; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct zx_crtc* FUNC0 (struct drm_crtc*) ; 

__attribute__((used)) static inline struct zx_vou_hw *FUNC1(struct drm_crtc *crtc)
{
	struct zx_crtc *zcrtc = FUNC0(crtc);

	return zcrtc->vou;
}