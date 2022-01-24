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
struct i2c_adapter {int dummy; } ;
struct nvkm_i2c_bus {struct i2c_adapter i2c; } ;
struct nvkm_i2c_aux {struct i2c_adapter i2c; } ;
struct nvkm_i2c {int dummy; } ;
struct nouveau_encoder {struct nvkm_i2c_aux* aux; struct i2c_adapter* i2c; struct dcb_output* dcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_encoder {scalar_t__ possible_clones; int /*<<< orphan*/  possible_crtcs; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct dcb_output {int type; int /*<<< orphan*/  hashm; int /*<<< orphan*/  hasht; int /*<<< orphan*/  heads; int /*<<< orphan*/  extdev; } ;

/* Variables and functions */
#define  DCB_OUTPUT_DP 129 
#define  DCB_OUTPUT_TMDS 128 
 int DRM_MODE_ENCODER_TMDS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_encoder*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nouveau_encoder* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_pior_func ; 
 int /*<<< orphan*/  nv50_pior_help ; 
 struct nvkm_i2c_aux* FUNC7 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 
 struct nvkm_i2c_bus* FUNC8 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 
 struct nvkm_i2c* FUNC9 (int /*<<< orphan*/ *) ; 
 struct drm_encoder* FUNC10 (struct nouveau_encoder*) ; 

__attribute__((used)) static int
FUNC11(struct drm_connector *connector, struct dcb_output *dcbe)
{
	struct nouveau_drm *drm = FUNC6(connector->dev);
	struct nvkm_i2c *i2c = FUNC9(&drm->client.device);
	struct nvkm_i2c_bus *bus = NULL;
	struct nvkm_i2c_aux *aux = NULL;
	struct i2c_adapter *ddc;
	struct nouveau_encoder *nv_encoder;
	struct drm_encoder *encoder;
	int type;

	switch (dcbe->type) {
	case DCB_OUTPUT_TMDS:
		bus  = FUNC8(i2c, FUNC1(dcbe->extdev));
		ddc  = bus ? &bus->i2c : NULL;
		type = DRM_MODE_ENCODER_TMDS;
		break;
	case DCB_OUTPUT_DP:
		aux  = FUNC7(i2c, FUNC0(dcbe->extdev));
		ddc  = aux ? &aux->i2c : NULL;
		type = DRM_MODE_ENCODER_TMDS;
		break;
	default:
		return -ENODEV;
	}

	nv_encoder = FUNC5(sizeof(*nv_encoder), GFP_KERNEL);
	if (!nv_encoder)
		return -ENOMEM;
	nv_encoder->dcb = dcbe;
	nv_encoder->i2c = ddc;
	nv_encoder->aux = aux;

	encoder = FUNC10(nv_encoder);
	encoder->possible_crtcs = dcbe->heads;
	encoder->possible_clones = 0;
	FUNC4(connector->dev, encoder, &nv50_pior_func, type,
			 "pior-%04x-%04x", dcbe->hasht, dcbe->hashm);
	FUNC3(encoder, &nv50_pior_help);

	FUNC2(connector, encoder);
	return 0;
}