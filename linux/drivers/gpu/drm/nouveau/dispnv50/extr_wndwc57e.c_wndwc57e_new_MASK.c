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
struct nv50_wndw {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nouveau_drm*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nv50_wndw**) ; 
 int /*<<< orphan*/  wndwc57e ; 

int
FUNC2(struct nouveau_drm *drm, enum drm_plane_type type, int index,
	     s32 oclass, struct nv50_wndw **pwndw)
{
	return FUNC1(&wndwc57e, drm, type, index, oclass,
			     FUNC0(index >> 1), pwndw);
}