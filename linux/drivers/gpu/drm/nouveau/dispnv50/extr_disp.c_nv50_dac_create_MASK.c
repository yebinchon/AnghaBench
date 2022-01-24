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
struct nvkm_i2c_bus {int /*<<< orphan*/  i2c; } ;
struct nvkm_i2c {int dummy; } ;
struct nouveau_encoder {int /*<<< orphan*/ * i2c; struct dcb_output* dcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_encoder {scalar_t__ possible_clones; int /*<<< orphan*/  possible_crtcs; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct dcb_output {int /*<<< orphan*/  hashm; int /*<<< orphan*/  hasht; int /*<<< orphan*/  heads; int /*<<< orphan*/  i2c_index; } ;

/* Variables and functions */
 int DRM_MODE_ENCODER_DAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_encoder*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nouveau_encoder* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_dac_func ; 
 int /*<<< orphan*/  nv50_dac_help ; 
 struct nvkm_i2c_bus* FUNC5 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 
 struct nvkm_i2c* FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_encoder* FUNC7 (struct nouveau_encoder*) ; 

__attribute__((used)) static int
FUNC8(struct drm_connector *connector, struct dcb_output *dcbe)
{
	struct nouveau_drm *drm = FUNC4(connector->dev);
	struct nvkm_i2c *i2c = FUNC6(&drm->client.device);
	struct nvkm_i2c_bus *bus;
	struct nouveau_encoder *nv_encoder;
	struct drm_encoder *encoder;
	int type = DRM_MODE_ENCODER_DAC;

	nv_encoder = FUNC3(sizeof(*nv_encoder), GFP_KERNEL);
	if (!nv_encoder)
		return -ENOMEM;
	nv_encoder->dcb = dcbe;

	bus = FUNC5(i2c, dcbe->i2c_index);
	if (bus)
		nv_encoder->i2c = &bus->i2c;

	encoder = FUNC7(nv_encoder);
	encoder->possible_crtcs = dcbe->heads;
	encoder->possible_clones = 0;
	FUNC2(connector->dev, encoder, &nv50_dac_func, type,
			 "dac-%04x-%04x", dcbe->hasht, dcbe->hashm);
	FUNC1(encoder, &nv50_dac_help);

	FUNC0(connector, encoder);
	return 0;
}