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
struct psb_intel_sdvo {int /*<<< orphan*/  sdvo_reg; int /*<<< orphan*/  saveSDVO; } ;
struct gma_encoder {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gma_encoder* FUNC1 (struct drm_connector*) ; 
 struct psb_intel_sdvo* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct gma_encoder *gma_encoder = FUNC1(connector);
	struct psb_intel_sdvo *sdvo = FUNC2(&gma_encoder->base);

	sdvo->saveSDVO = FUNC0(sdvo->sdvo_reg);
}