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
struct psb_intel_lvds_priv {int /*<<< orphan*/  ddc_bus; } ;
struct gma_encoder {struct psb_intel_lvds_priv* dev_priv; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 struct gma_encoder* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_connector *connector)
{
	struct gma_encoder *gma_encoder = FUNC2(connector);
	struct psb_intel_lvds_priv *lvds_priv = gma_encoder->dev_priv;

	FUNC4(lvds_priv->ddc_bus);
	FUNC1(connector);
	FUNC0(connector);
	FUNC3(connector);
}