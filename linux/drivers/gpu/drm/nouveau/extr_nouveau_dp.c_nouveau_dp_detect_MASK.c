#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct nvkm_i2c_aux {int dummy; } ;
struct TYPE_10__ {int link_bw; int link_nr; int /*<<< orphan*/  mstm; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct nouveau_encoder {TYPE_5__ dp; TYPE_4__* dcb; struct nvkm_i2c_aux* aux; TYPE_2__ base; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  dpcd ;
struct TYPE_8__ {int link_nr; int link_bw; } ;
struct TYPE_9__ {TYPE_3__ dpconf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int DP_MAX_LANE_COUNT_MASK ; 
 int ENODEV ; 
 int NOUVEAU_DP_MST ; 
 int NOUVEAU_DP_SST ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct nvkm_i2c_aux*,int*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_mst ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvkm_i2c_aux*,int /*<<< orphan*/ ,int*,int) ; 

int
FUNC5(struct nouveau_encoder *nv_encoder)
{
	struct drm_device *dev = nv_encoder->base.base.dev;
	struct nouveau_drm *drm = FUNC2(dev);
	struct nvkm_i2c_aux *aux;
	u8 dpcd[8];
	int ret;

	aux = nv_encoder->aux;
	if (!aux)
		return -ENODEV;

	ret = FUNC4(aux, DP_DPCD_REV, dpcd, sizeof(dpcd));
	if (ret)
		return ret;

	nv_encoder->dp.link_bw = 27000 * dpcd[1];
	nv_encoder->dp.link_nr = dpcd[2] & DP_MAX_LANE_COUNT_MASK;

	FUNC0(drm, "display: %dx%d dpcd 0x%02x\n",
		     nv_encoder->dp.link_nr, nv_encoder->dp.link_bw, dpcd[0]);
	FUNC0(drm, "encoder: %dx%d\n",
		     nv_encoder->dcb->dpconf.link_nr,
		     nv_encoder->dcb->dpconf.link_bw);

	if (nv_encoder->dcb->dpconf.link_nr < nv_encoder->dp.link_nr)
		nv_encoder->dp.link_nr = nv_encoder->dcb->dpconf.link_nr;
	if (nv_encoder->dcb->dpconf.link_bw < nv_encoder->dp.link_bw)
		nv_encoder->dp.link_bw = nv_encoder->dcb->dpconf.link_bw;

	FUNC0(drm, "maximum: %dx%d\n",
		     nv_encoder->dp.link_nr, nv_encoder->dp.link_bw);

	FUNC1(dev, aux, dpcd);

	ret = FUNC3(nv_encoder->dp.mstm, dpcd, nouveau_mst);
	if (ret == 1)
		return NOUVEAU_DP_MST;
	if (ret == 0)
		return NOUVEAU_DP_SST;
	return ret;
}