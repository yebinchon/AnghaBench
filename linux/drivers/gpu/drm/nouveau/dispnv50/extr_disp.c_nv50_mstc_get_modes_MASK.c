#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bpc; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; TYPE_1__ display_info; } ;
struct nv50_mstc {TYPE_2__ connector; scalar_t__ native; scalar_t__ edid; TYPE_4__* port; } ;
struct drm_connector {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  mgr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 struct nv50_mstc* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC6(struct drm_connector *connector)
{
	struct nv50_mstc *mstc = FUNC5(connector);
	int ret = 0;

	mstc->edid = FUNC2(&mstc->connector, mstc->port->mgr, mstc->port);
	FUNC1(&mstc->connector, mstc->edid);
	if (mstc->edid)
		ret = FUNC0(&mstc->connector, mstc->edid);

	if (!mstc->connector.display_info.bpc)
		mstc->connector.display_info.bpc = 8;

	if (mstc->native)
		FUNC3(mstc->connector.dev, mstc->native);
	mstc->native = FUNC4(&mstc->connector);
	return ret;
}