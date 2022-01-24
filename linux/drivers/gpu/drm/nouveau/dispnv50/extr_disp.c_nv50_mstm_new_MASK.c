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
typedef  int u8 ;
struct TYPE_8__ {int /*<<< orphan*/ * cbs; } ;
struct nv50_mstm {int /*<<< orphan*/ * msto; TYPE_4__ mgr; struct nouveau_encoder* outp; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct TYPE_7__ {TYPE_2__ base; } ;
struct nouveau_encoder {TYPE_3__ base; TYPE_1__* dcb; } ;
struct drm_dp_aux {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  heads; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_MSTM_CTRL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_aux*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,struct drm_device*,struct drm_dp_aux*,int,int const,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct nv50_mstm* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_mstm ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_encoder *outp, struct drm_dp_aux *aux, int aux_max,
	      int conn_base_id, struct nv50_mstm **pmstm)
{
	const int max_payloads = FUNC3(outp->dcb->heads);
	struct drm_device *dev = outp->base.base.dev;
	struct nv50_mstm *mstm;
	int ret, i;
	u8 dpcd;

	/* This is a workaround for some monitors not functioning
	 * correctly in MST mode on initial module load.  I think
	 * some bad interaction with the VBIOS may be responsible.
	 *
	 * A good ol' off and on again seems to work here ;)
	 */
	ret = FUNC0(aux, DP_DPCD_REV, &dpcd);
	if (ret >= 0 && dpcd >= 0x12)
		FUNC1(aux, DP_MSTM_CTRL, 0);

	if (!(mstm = *pmstm = FUNC4(sizeof(*mstm), GFP_KERNEL)))
		return -ENOMEM;
	mstm->outp = outp;
	mstm->mgr.cbs = &nv50_mstm;

	ret = FUNC2(&mstm->mgr, dev, aux, aux_max,
					   max_payloads, conn_base_id);
	if (ret)
		return ret;

	for (i = 0; i < max_payloads; i++) {
		ret = FUNC5(dev, outp->dcb->heads, outp->base.base.name,
				    i, &mstm->msto[i]);
		if (ret)
			return ret;
	}

	return 0;
}