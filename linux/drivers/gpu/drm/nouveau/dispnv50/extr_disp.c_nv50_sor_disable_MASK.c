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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_i2c_aux {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct nouveau_encoder {TYPE_1__ base; int /*<<< orphan*/  (* update ) (struct nouveau_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct nvkm_i2c_aux* aux; int /*<<< orphan*/ * crtc; } ;
struct nouveau_crtc {int /*<<< orphan*/  index; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_SET_POWER ; 
 int /*<<< orphan*/  DP_SET_POWER_D3 ; 
 int /*<<< orphan*/  DP_SET_POWER_MASK ; 
 struct nouveau_crtc* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_encoder* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,struct nouveau_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nouveau_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_encoder*) ; 
 int FUNC5 (struct nvkm_i2c_aux*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_i2c_aux*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct drm_encoder *encoder)
{
	struct nouveau_encoder *nv_encoder = FUNC1(encoder);
	struct nouveau_crtc *nv_crtc = FUNC0(nv_encoder->crtc);

	nv_encoder->crtc = NULL;

	if (nv_crtc) {
		struct nvkm_i2c_aux *aux = nv_encoder->aux;
		u8 pwr;

		if (aux) {
			int ret = FUNC5(aux, DP_SET_POWER, &pwr, 1);
			if (ret == 0) {
				pwr &= ~DP_SET_POWER_MASK;
				pwr |=  DP_SET_POWER_D3;
				FUNC6(aux, DP_SET_POWER, &pwr, 1);
			}
		}

		nv_encoder->update(nv_encoder, nv_crtc->index, NULL, 0, 0);
		FUNC2(encoder, nv_crtc);
		FUNC3(&nv_encoder->base.base, nv_crtc);
		FUNC4(nv_encoder);
	}
}