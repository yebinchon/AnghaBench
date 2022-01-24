#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_connector {int /*<<< orphan*/  polled; } ;
struct exynos_dpi {int /*<<< orphan*/  dev; struct drm_connector connector; } ;
struct drm_encoder {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct exynos_dpi* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  exynos_dpi_connector_funcs ; 
 int /*<<< orphan*/  exynos_dpi_connector_helper_funcs ; 

__attribute__((used)) static int FUNC5(struct drm_encoder *encoder)
{
	struct exynos_dpi *ctx = FUNC4(encoder);
	struct drm_connector *connector = &ctx->connector;
	int ret;

	connector->polled = DRM_CONNECTOR_POLL_HPD;

	ret = FUNC3(encoder->dev, connector,
				 &exynos_dpi_connector_funcs,
				 DRM_MODE_CONNECTOR_VGA);
	if (ret) {
		FUNC0(ctx->dev,
			      "failed to initialize connector with drm\n");
		return ret;
	}

	FUNC2(connector, &exynos_dpi_connector_helper_funcs);
	FUNC1(connector, encoder);

	return 0;
}