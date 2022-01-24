#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ handle; } ;
struct TYPE_8__ {scalar_t__ handle; } ;
struct nv50_wndw_atom {TYPE_1__ sema; TYPE_4__ ntfy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct nv50_wndw {TYPE_3__* func; TYPE_2__ plane; } ;
struct nv50_head_atom {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* release ) (struct nv50_wndw*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_wndw*,struct nv50_wndw_atom*,struct nv50_head_atom*) ; 

__attribute__((used)) static void
FUNC3(struct nv50_wndw *wndw,
			       struct nv50_wndw_atom *asyw,
			       struct nv50_head_atom *asyh)
{
	struct nouveau_drm *drm = FUNC1(wndw->plane.dev);
	FUNC0(drm, "%s release\n", wndw->plane.name);
	wndw->func->release(wndw, asyw, asyh);
	asyw->ntfy.handle = 0;
	asyw->sema.handle = 0;
}