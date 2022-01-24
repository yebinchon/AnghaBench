#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_i2c_bus {int /*<<< orphan*/  i2c; } ;
struct nvkm_i2c_aux {int /*<<< orphan*/  i2c; } ;
struct nvkm_i2c {int dummy; } ;
struct nvkm_bios {int dummy; } ;
struct nv50_disp {TYPE_3__* disp; } ;
struct TYPE_13__ {int /*<<< orphan*/  mstm; } ;
struct nouveau_encoder {int /*<<< orphan*/ * i2c; TYPE_6__ dp; struct nvkm_i2c_aux* aux; int /*<<< orphan*/  update; struct dcb_output* dcb; } ;
struct TYPE_8__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_4__ base; } ;
struct TYPE_14__ {int /*<<< orphan*/  ddc; } ;
struct nouveau_connector {scalar_t__ type; TYPE_5__ base; TYPE_7__ aux; } ;
struct drm_encoder {int /*<<< orphan*/  dev; scalar_t__ possible_clones; int /*<<< orphan*/  possible_crtcs; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct dcb_output {int type; int /*<<< orphan*/  i2c_index; int /*<<< orphan*/  hashm; int /*<<< orphan*/  hasht; int /*<<< orphan*/  heads; } ;
struct TYPE_9__ {scalar_t__ oclass; } ;
struct TYPE_10__ {TYPE_2__ object; } ;

/* Variables and functions */
 scalar_t__ DCB_CONNECTOR_eDP ; 
#define  DCB_OUTPUT_DP 130 
#define  DCB_OUTPUT_LVDS 129 
#define  DCB_OUTPUT_TMDS 128 
 int DRM_MODE_ENCODER_LVDS ; 
 int DRM_MODE_ENCODER_TMDS ; 
 int ENOMEM ; 
 scalar_t__ GF110_DISP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_encoder*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nouveau_encoder* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_connector* FUNC4 (struct drm_connector*) ; 
 struct nouveau_drm* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nv50_disp* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nouveau_encoder*,TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv50_sor_func ; 
 int /*<<< orphan*/  nv50_sor_help ; 
 int /*<<< orphan*/  nv50_sor_update ; 
 scalar_t__ FUNC8 (struct nvkm_bios*,int*,int*,int*,int*) ; 
 int FUNC9 (struct nvkm_bios*,scalar_t__) ; 
 struct nvkm_i2c_aux* FUNC10 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 
 struct nvkm_i2c_bus* FUNC11 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 
 struct nvkm_bios* FUNC12 (int /*<<< orphan*/ *) ; 
 struct nvkm_i2c* FUNC13 (int /*<<< orphan*/ *) ; 
 struct drm_encoder* FUNC14 (struct nouveau_encoder*) ; 

__attribute__((used)) static int
FUNC15(struct drm_connector *connector, struct dcb_output *dcbe)
{
	struct nouveau_connector *nv_connector = FUNC4(connector);
	struct nouveau_drm *drm = FUNC5(connector->dev);
	struct nvkm_bios *bios = FUNC12(&drm->client.device);
	struct nvkm_i2c *i2c = FUNC13(&drm->client.device);
	struct nouveau_encoder *nv_encoder;
	struct drm_encoder *encoder;
	u8 ver, hdr, cnt, len;
	u32 data;
	int type, ret;

	switch (dcbe->type) {
	case DCB_OUTPUT_LVDS: type = DRM_MODE_ENCODER_LVDS; break;
	case DCB_OUTPUT_TMDS:
	case DCB_OUTPUT_DP:
	default:
		type = DRM_MODE_ENCODER_TMDS;
		break;
	}

	nv_encoder = FUNC3(sizeof(*nv_encoder), GFP_KERNEL);
	if (!nv_encoder)
		return -ENOMEM;
	nv_encoder->dcb = dcbe;
	nv_encoder->update = nv50_sor_update;

	encoder = FUNC14(nv_encoder);
	encoder->possible_crtcs = dcbe->heads;
	encoder->possible_clones = 0;
	FUNC2(connector->dev, encoder, &nv50_sor_func, type,
			 "sor-%04x-%04x", dcbe->hasht, dcbe->hashm);
	FUNC1(encoder, &nv50_sor_help);

	FUNC0(connector, encoder);

	if (dcbe->type == DCB_OUTPUT_DP) {
		struct nv50_disp *disp = FUNC6(encoder->dev);
		struct nvkm_i2c_aux *aux =
			FUNC10(i2c, dcbe->i2c_index);
		if (aux) {
			if (disp->disp->object.oclass < GF110_DISP) {
				/* HW has no support for address-only
				 * transactions, so we're required to
				 * use custom I2C-over-AUX code.
				 */
				nv_encoder->i2c = &aux->i2c;
			} else {
				nv_encoder->i2c = &nv_connector->aux.ddc;
			}
			nv_encoder->aux = aux;
		}

		if (nv_connector->type != DCB_CONNECTOR_eDP &&
		    (data = FUNC8(bios, &ver, &hdr, &cnt, &len)) &&
		    ver >= 0x40 && (FUNC9(bios, data + 0x08) & 0x04)) {
			ret = FUNC7(nv_encoder, &nv_connector->aux, 16,
					    nv_connector->base.base.id,
					    &nv_encoder->dp.mstm);
			if (ret)
				return ret;
		}
	} else {
		struct nvkm_i2c_bus *bus =
			FUNC11(i2c, dcbe->i2c_index);
		if (bus)
			nv_encoder->i2c = &bus->i2c;
	}

	return 0;
}