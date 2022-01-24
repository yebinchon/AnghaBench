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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct nv50_msto {int disabled; int /*<<< orphan*/ * head; struct nv50_mstc* mstc; TYPE_1__ encoder; } ;
struct nv50_mstm {int /*<<< orphan*/  mgr; } ;
struct nv50_mstc {int /*<<< orphan*/  port; struct nv50_mstm* mstm; } ;
struct nouveau_drm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nv50_msto *msto)
{
	struct nouveau_drm *drm = FUNC2(msto->encoder.dev);
	struct nv50_mstc *mstc = msto->mstc;
	struct nv50_mstm *mstm = mstc->mstm;

	if (!msto->disabled)
		return;

	FUNC0(drm, "%s: msto cleanup\n", msto->encoder.name);

	FUNC1(&mstm->mgr, mstc->port);

	msto->mstc = NULL;
	msto->head = NULL;
	msto->disabled = false;
}