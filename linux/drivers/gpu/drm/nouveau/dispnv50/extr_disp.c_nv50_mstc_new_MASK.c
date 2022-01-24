#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct nv50_mstm {TYPE_12__** msto; TYPE_3__* outp; } ;
struct TYPE_19__ {int /*<<< orphan*/  base; TYPE_4__* funcs; } ;
struct nv50_mstc {TYPE_6__ connector; struct drm_dp_mst_port* port; struct nv50_mstm* mstm; } ;
struct drm_dp_mst_port {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  tile_property; int /*<<< orphan*/  path_property; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* reset ) (TYPE_6__*) ;} ;
struct TYPE_14__ {struct drm_device* dev; } ;
struct TYPE_15__ {TYPE_1__ base; } ;
struct TYPE_16__ {TYPE_2__ base; } ;
struct TYPE_13__ {int /*<<< orphan*/  encoder; } ;

/* Variables and functions */
 int FUNC0 (TYPE_12__**) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DisplayPort ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nv50_mstc*) ; 
 struct nv50_mstc* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  nv50_mstc ; 
 int /*<<< orphan*/  nv50_mstc_help ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 

__attribute__((used)) static int
FUNC11(struct nv50_mstm *mstm, struct drm_dp_mst_port *port,
	      const char *path, struct nv50_mstc **pmstc)
{
	struct drm_device *dev = mstm->outp->base.base.dev;
	struct nv50_mstc *mstc;
	int ret, i;

	if (!(mstc = *pmstc = FUNC8(sizeof(*mstc), GFP_KERNEL)))
		return -ENOMEM;
	mstc->mstm = mstm;
	mstc->port = port;

	ret = FUNC3(dev, &mstc->connector, &nv50_mstc,
				 DRM_MODE_CONNECTOR_DisplayPort);
	if (ret) {
		FUNC7(*pmstc);
		*pmstc = NULL;
		return ret;
	}

	FUNC2(&mstc->connector, &nv50_mstc_help);

	mstc->connector.funcs->reset(&mstc->connector);
	FUNC9(&mstc->connector);

	for (i = 0; i < FUNC0(mstm->msto) && mstm->msto[i]; i++)
		FUNC1(&mstc->connector, &mstm->msto[i]->encoder);

	FUNC6(&mstc->connector.base, dev->mode_config.path_property, 0);
	FUNC6(&mstc->connector.base, dev->mode_config.tile_property, 0);
	FUNC4(&mstc->connector, path);
	FUNC5(port);
	return 0;
}