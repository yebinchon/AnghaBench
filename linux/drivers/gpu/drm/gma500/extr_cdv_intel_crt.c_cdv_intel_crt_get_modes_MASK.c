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
struct gma_encoder {TYPE_1__* ddc_bus; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 struct gma_encoder* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	struct gma_encoder *gma_encoder = FUNC0(connector);
	return FUNC1(connector,
				       &gma_encoder->ddc_bus->adapter);
}