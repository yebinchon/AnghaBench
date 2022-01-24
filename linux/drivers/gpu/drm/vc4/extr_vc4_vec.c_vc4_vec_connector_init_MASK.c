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
struct drm_connector {int interlace_allowed; int /*<<< orphan*/  base; } ;
struct vc4_vec_connector {struct vc4_vec* vec; int /*<<< orphan*/  encoder; struct drm_connector base; } ;
struct vc4_vec {int /*<<< orphan*/  encoder; int /*<<< orphan*/ * tv_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  tv_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Composite ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_connector* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t VC4_VEC_TV_MODE_NTSC ; 
 struct vc4_vec_connector* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  vc4_vec_connector_funcs ; 
 int /*<<< orphan*/  vc4_vec_connector_helper_funcs ; 
 int /*<<< orphan*/ * vc4_vec_tv_modes ; 

__attribute__((used)) static struct drm_connector *FUNC6(struct drm_device *dev,
						    struct vc4_vec *vec)
{
	struct drm_connector *connector = NULL;
	struct vc4_vec_connector *vec_connector;

	vec_connector = FUNC1(dev->dev, sizeof(*vec_connector),
				     GFP_KERNEL);
	if (!vec_connector)
		return FUNC0(-ENOMEM);

	connector = &vec_connector->base;
	connector->interlace_allowed = true;

	vec_connector->encoder = vec->encoder;
	vec_connector->vec = vec;

	FUNC4(dev, connector, &vc4_vec_connector_funcs,
			   DRM_MODE_CONNECTOR_Composite);
	FUNC3(connector, &vc4_vec_connector_helper_funcs);

	FUNC5(&connector->base,
				   dev->mode_config.tv_mode_property,
				   VC4_VEC_TV_MODE_NTSC);
	vec->tv_mode = &vc4_vec_tv_modes[VC4_VEC_TV_MODE_NTSC];

	FUNC2(connector, vec->encoder);

	return connector;
}